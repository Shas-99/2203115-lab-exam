#!/usr/bin/bash
name=$1   #taking arguements
field=$2
value=$3
echo  ${name:0:2}_${field}_${value}.csv     #file name
echo $1 >> ${name:0:2}_${field}_${value}.csv
echo $2 >> ${name:0:2}_${field}_${value}.csv
echo $3 >> ${name:0:2}_${field}_${value}.csv
echo wc -l $1 >> ${name:0:2}_${field}_${value}.csv
head -n 1 $1 >> ${name:0:2}_${field}_${value}.csv
grep -iw '$2' $1 >> ${name:0:2}_${field}_${value}.csv    #appending the required output into the file


