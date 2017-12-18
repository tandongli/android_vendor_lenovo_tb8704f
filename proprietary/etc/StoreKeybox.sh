#!/system/bin/sh
StoreKeybox /sdcard/keybox.bin
sleep 5
setprop persist.sys.storekeybox 0
sleep 1
rm -f /sdcard/keybox.bin
sleep 2
CheckKeybox
exit 0
