#!/bin/bash

set -e

if [ "$#" -ne 1 ];then
	echo "Usage: $0 /path/to/Mapcon/folder"
	exit 1
fi

app_folder="$(realpath $1)"

rm -Rf build
mkdir build
javac -Xlint:unchecked -cp ../libs/vendor.huawei.hardware.radio-java.jar:../libs/framework.jar:../libs/telephony-common.jar:../libs/ims-common.jar -d build $(find src -name \*.java)
$ANDROID_HOME/build-tools/28.0.3/d8 --output build/ --lib ../libs/vendor.huawei.hardware.radio-java.jar --lib ../libs/framework.jar --lib ../libs/telephony-common.jar --lib ../libs/ims-common.jar $(find build -name \*.class)

rm -Rf Mapcon
java -jar ../apktool.jar d "$app_folder"/Mapcon.apk
if [ ! -d Mapcon/smali ];then
	(
	cd Mapcon
	../../vdexExtractor -i "$app_folder"/oat/arm64/Mapcon.vdex -o .
	java -jar ../../baksmali.jar d Mapcon_classes.dex
	mv out smali
        cd ..
	)
fi

sed -i \
	-e 's/android:permission="[^"]*"//g' \
        -e '/android:name="\.vowifiqoe\.VoWifiQoeService"/d' \
	Mapcon/AndroidManifest.xml

sed -i \
	-e 's@^.*Landroid/content/Context;->sendBroadcastAsUser.*$@@g' \
	$(find Mapcon/smali -name *.smali -type f)

cp -R libs/* Mapcon/smali/

java -jar ../baksmali.jar d build/classes.dex -o Mapcon/smali

java -jar ../apktool.jar b Mapcon
LD_LIBRARY_PATH=../signapk/ java -jar ../signapk/signapk.jar -a 4096\
	../keys/platform.x509.pem \
	../keys/platform.pk8 \
	Mapcon/dist/Mapcon.apk Mapcon.apk
