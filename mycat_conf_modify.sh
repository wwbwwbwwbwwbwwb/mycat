
#!/bin/sh
input_file=$1

if [ ! -n "$input_file" ]; then
    echo "The input_file is empty,please check again!"
    exit 1
fi

stdopt1=`echo ${input_file%.*} 2>/dev/null`
stdopt2=`echo ${input_file##*.} 2>/dev/null`

if [ "$stdopt2" == "test" ] || [ "$stdopt2" == "01" ] || [ "$stdopt2" == "02" ] || [ "$stdopt2" == "03" ] || [ "$stdopt2" == "04" ] || [ "$stdopt2" == "05" ] || [ "$stdopt2" == "06" ] || [ "$stdopt2" == "07" ] ||  "$stdopt2" == "08" || "$stdopt2" == "09" ]]; then
    echo "this is $stdopt2 files."
    test -e /root/mycat/conf/$stdopt1 && rm -f /root/mycat/conf/$stdopt1
    cp /root/mycat/conf/0416/$input_file /root/mycat/conf/$stdopt1
else
    echo "The input_file $input_file is not ok ,please check again!"
fi