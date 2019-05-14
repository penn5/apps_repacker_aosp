#!/bin/bash

set -e

if [ "$#" -ne 1 ];then
	echo "Usage: $0 /path/to/ImsService/folder"
	exit 1
fi

app_folder="$(realpath $1)"

rm -f ImsService_classes.dex
../vdexExtractor -i "$app_folder"/oat/arm64/ImsService.vdex -o .

rm -f ImsService_classes-dex2jar.jar
../dex2jar/d2j-dex2jar.sh ImsService_classes.dex

rm -f vendor.mediatek.hardware.radio-java.jar
../dex2jar/d2j-class-version-switch.sh 8 ImsService_classes-dex2jar.jar vendor.mediatek.hardware.radio-java.jar
zip -qd vendor.mediatek.hardware.radio-java.jar 'android/*' 'com/*' 'vendor/*/imsa/*' 'vendor/*/netdagent/*'

