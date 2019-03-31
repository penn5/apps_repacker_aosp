#!/bin/bash

set -e

if [ "$#" -ne 1 ];then
	echo "Usage: $0 /path/to/Ims6/folder"
	exit 1
fi

app_folder="$(realpath $1)"

rm -Rf Ims6
java -jar ../apktool.jar d "$app_folder"/Ims6.apk
if [ ! -d Ims6/smali ];then
	(
	cd Ims6
	../../vdexExtractor -i "$app_folder"/oat/arm64/Ims6.vdex -o .
	java -jar ../../baksmali.jar d Ims6_classes.dex
	mv out smali
        cd ..
	)
fi

sed -i \
	-e 's/android:theme=""//g' \
	Ims6/AndroidManifest.xml

sed -i \
	-e 's/^.*<\/application>$/        <service android:name=".Ims6Service" android:permission="android.permission.BIND_IMS_SERVICE" android:persistent="true">\
            <intent-filter>\
                <action android:name="android.telephony.ims.ImsService" \/>\
            <\/intent-filter>\
        <\/service>\
    <\/application>/m' \
	Ims6/AndroidManifest.xml


(
set -x
rm -Rf build
mkdir build
#javac -Xlint:unchecked -cp ../libs/framework.jar:../libs/telephony-common.jar:../libs/ims-common.jar -d build $(find src -name \*.java)
#$ANDROID_HOME/build-tools/28.0.3/d8 --output build/ --lib ../libs/framework.jar --lib ../libs/telephony-common.jar --lib ../libs/ims-common.jar $(find build -name \*.class)
#java -jar ../baksmali.jar d build/classes.dex -o Ims6/smali
)

java -jar ../apktool.jar b Ims6
LD_LIBRARY_PATH=../signapk/ java -jar ../signapk/signapk.jar -a 4096\
	../keys/platform.x509.pem \
	../keys/platform.pk8 \
	Ims6/dist/Ims6.apk Ims6.apk
