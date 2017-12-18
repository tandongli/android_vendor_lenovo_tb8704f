#!/system/bin/sh
echo "iwpriv_10db.sh"
ROOT_PATH="/sdcard"
CMD_PATH="/system/etc"
CMD="/system/bin/iwpriv"
rm $ROOT_PATH/iwpriv_10db_result.txt
while read line
do
		    $CMD $line >> $ROOT_PATH/iwpriv_10db_result.txt 2>&1
done < $CMD_PATH/iwpriv_10db_para.txt

#for line in ${cmd_array[@]}
#do
#$CMD $line >> $ROOT_PATH/iwpriv_10db_result.txt 2>&1
#done

setprop persist.sys.iwpriv_10 0
exit 0
