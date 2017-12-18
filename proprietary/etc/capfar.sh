#!/system/bin/sh
iwpriv wlan0 setMaxTxPower 16
sleep 2
setprop persist.sys.wificapsensorfar 0
exit 0
