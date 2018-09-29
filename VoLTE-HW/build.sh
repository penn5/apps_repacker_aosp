#!/bin/bash

set -e

if [ "$#" -ne 2 ];then
	echo "Usage: $0 /path/to/system/ /path/to/vendor/"
	exit 1
fi

system_folder="$1"
vendor_folder="$2"
libdst="HwIms/lib/arm64-v8a/"

# Decompile
rm -Rf HwIms
java -jar ../apktool.jar d "$system_folder"/app/HwIms/HwIms.apk

cd HwIms

# Devdex classes.vdex into classes.dex
../../vdexExtractor -i "$system_folder"/app/HwIms/oat/arm64/HwIms.vdex -o .

# Copy libs
mkdir -p "$libdst"
find "$system_folder"/app/HwIms/lib/arm64 -type f -exec cp '{}' "$libdst" \; 
find "$system_folder"/app/HwIms/lib/arm64 -type l -exec readlink '{}' + | \
	while read f;do
		p="$(echo $f |sed -E 's;/system;;g')"
		cp "$system_folder"/$p "$libdst"
	done

# Repack with the libs and classes, remove old version and unpack again
java -jar ../apktool.jar b HwIms
cp HwIms/dist/HwIms.apk HwImsTmp.apk
rm -Rf HwIms
java -jar ../apktool.jar d HwImsTmp.apk

# Patch smali!
sed -i -E \
	-e 's;Landroid/telephony/ims/feature/;Landroid/telephony/ims/compat/feature/;g' \
	-e 's;Landroid/telephony/ims/stub/;Landroid/telephony/ims/compat/stub/;g' \
	-e 's;Landroid/telephony/ims/ImsService;Landroid/telephony/ims/compat/ImsService;g' \
	-e 's;Lcom/android/ims/HwImsManager;Lcom/android/ims/ImsManager;g' \
	$(find -name \*.smali)

# Patch Manifest
sed -i \
	-e 's; android:process="com.huawei.telephony.ims";;g' \
	-e 's;android.telephony.ims.ImsService;android.telephony.ims.compat.ImsService;g' \
	-e 's;<uses-permission android:name="com.huawei.permission.USE_LEGACY_INTERFACE"/>;;g' 
	-e 's;<uses-permission android:name="com.huawei.permission.NET_RAW"/>;;g' \
	-e 's;<uses-permission android:name="com.android.huawei.permission.mt.missing.tips"/>;;g' \
	-e 's;<uses-permission android:name="com.hisi.permission.VOWIFI_SPECIAL"/>;;g' \
	HwIms/AndroidManifest.xml

# Repack and sign!
java -jar ../apktool.jar b HwIms
LD_LIBRARY_PATH=../signapk/ java -jar ../signapk/signapk.jar \
	../keys/platform.x509.pem \
	../keys/platform.pk8 \
	HwIms/dist/HwIms.apk HwIms.apk
