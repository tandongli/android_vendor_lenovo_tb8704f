#!/system/bin/sh
RESULT_PATH="/sdcard"
btconfig /dev/smd3 reset
setprop persist.sys.closebt 0
exit 0
