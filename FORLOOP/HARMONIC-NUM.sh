#!/bin/bash -x

read -p "enter a number :" a
num=0
res=0
for (( i=1; i<=$a; i++))
do
res=$(echo | awk '{print '1/$i'}')
num=$(echo | awk '{print '$num+$res'}')
done
echo "$num"
