#!/system/bin/sh
iwpriv wlan0 setMaxTxPower 11
sleep 2
setprop persist.sys.wificapsensornear 0
exit 0
