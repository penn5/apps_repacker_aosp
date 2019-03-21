#!/bin/bash

set -e

if [ "$#" -ne 1 ];then
	echo "Usage: $0 /path/to/HwIms/folder"
	exit 1
fi

app_folder="$(realpath $1)"

rm -f HwIms_classes.dex
../vdexExtractor -i "$app_folder"/oat/arm64/HwIms.vdex -o .

rm -f HwIms_classes-dex2jar.jar
../dex2jar/d2j-dex2jar.sh HwIms_classes.dex

rm -f vendor.huawei.hardware.radio-java.jar
../dex2jar/d2j-class-version-switch.sh 8 HwIms_classes-dex2jar.jar vendor.huawei.hardware.radio-java.jar
zip -qd vendor.huawei.hardware.radio-java.jar 'android/*' 'vendor/*' 'com/huawei/*' 'com/android/*' # Leaving only com/hisi/mapcon

#LD_LIBRARY_PATH=../signapk/ java -jar ../signapk/signapk.jar -a 4096\
#	../keys/platform.x509.pem \
#	../keys/platform.pk8 \
#	HwIms/dist/HwIms.apk HwIms.apk
