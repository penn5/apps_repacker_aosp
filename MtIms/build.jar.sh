rm -rf classes.dex
unzip $1 classes.dex

rm -f classes-dex2jar.jar
../dex2jar/d2j-dex2jar.sh classes.dex

rm -f vendor.mediatek.hardware.radio-java.jar
../dex2jar/d2j-class-version-switch.sh 8 classes-dex2jar.jar vendor.mediatek.hardware-java.jar
zip -qd vendor.mediatek.hardware-java.jar 'android/*' 'com/*'

