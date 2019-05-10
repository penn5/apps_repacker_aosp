#!/bin/bash

set -e

if [ "$#" -ne 1 ];then
	echo "Usage: $0 /path/to/ImsService/folder"
	exit 1
fi

app_folder="$(realpath $1)"
libdst="ImsService/lib/arm64-v8a/"

rm -Rf ImsService
java -jar ../apktool.jar d "$app_folder"/ImsService.apk
if [ ! -d ImsService/smali ];then
	(
	cd ImsService
	../../vdexExtractor -i "$app_folder"/oat/arm64/ImsService.vdex -o .
	java -jar ../../baksmali.jar d ImsService_classes.dex
	mv out smali
        cd ..
	)
fi
#mkdir -p "$libdst"
#find "$app_folder"/lib/arm64 -type f -exec cp '{}' "$libdst" \;

#(
#set -x
#rm -Rf build
#mkdir build
#javac -Xlint:unchecked -cp ../libs/framework.jar:../libs/telephony-common.jar:../libs/ims-common.jar -d build $(find src -name \*.java)
#$ANDROID_HOME/build-tools/28.0.3/d8 --output build/ --lib ../libs/framework.jar --lib ../libs/telephony-common.jar --lib ../libs/ims-common.jar $(find build -name \*.class)
#java -jar ../baksmali.jar d build/classes.dex -o ImsService/smali
#)

#java -jar ../apktool.jar b ImsService
#LD_LIBRARY_PATH=../signapk/ java -jar ../signapk/signapk.jar -a 4096\
#	../keys/platform.x509.pem \
#	../keys/platform.pk8 \
#	ImsService/dist/ImsService.apk ImsService.apk
