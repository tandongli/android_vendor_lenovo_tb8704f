#!/system/bin/sh
#add by zach for test 
RESULT_PATH="/sdcard"
echo "start" > $RESULT_PATH/bluedut-sh.txt
btconfig /dev/smd3 rawcmd 0x03 0x0003
echo "1" > $RESULT_PATH/bluedut-sh.txt
btconfig /dev/smd3 rawcmd 0x06, 0x03
echo "2" > $RESULT_PATH/bluedut-sh.txt
btconfig /dev/smd3 rawcmd 0x03, 0x05, 0x02, 0x00, 0x02
echo "3" > $RESULT_PATH/bluedut-sh.txt
btconfig /dev/smd3 rawcmd 0x03, 0x1A, 0x03
echo "4" > $RESULT_PATH/bluedut-sh.txt
btconfig /dev/smd3 rawcmd 0x03, 0x20, 0x00
echo "5" > $RESULT_PATH/bluedut-sh.txt
btconfig /dev/smd3 rawcmd 0x03, 0x22, 0x00

echo "end" > $RESULT_PATH/bluedut-sh.txt
