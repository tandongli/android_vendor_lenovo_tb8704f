#!/system/bin/sh
echo "iwpriv.max.sh"
ROOT_PATH="/sdcard"
CMD_PATH="/system/etc"
CMD="/system/bin/iwpriv"
rm $ROOT_PATH/iwpriv_result.txt
while read line
do
		    $CMD $line >> $ROOT_PATH/iwpriv_result.txt 2>&1
done < $CMD_PATH/iwpriv_para.txt

#for line in ${cmd_array[@]}
#do
#$CMD $line >> $ROOT_PATH/iwpriv_result.txt 2>&1
#done

setprop persist.sys.iwpriv_max 0
exit 0
