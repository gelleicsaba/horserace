#! /bin/bash
cur_date=$(date -r "horserace.basic")
pre_date=$cur_date

while :
do
  if [[ "$pre_date" == "$cur_date" ]]
  then
    # echo "="
    cur_date=$(date -r "horserace.basic")
    sleep 1
  else
    echo "BUILD.."
    pre_date=$cur_date
    
    # test mode
    # python3 btrend.py "-in=horserace.basic" "-out=horserace.txt" -step=1 -s -p -t > /dev/null
    # release mode
    python3 btrend.py "-in=horserace.basic" "-out=horserace.txt" -step=1 -s -p > /dev/null

    wine ~/c64list-v4.01/c64list.exe horserace.txt -ovr -prg:horserace.prg > /dev/null
    python3 ~/c64list-v4.01/prg2crt.py horserace.prg horserace.crt > /dev/null
    echo "DONE!"
  fi
done
