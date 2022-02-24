#!/bin/bash 

read -p "enter the first range" n
read -p "enter the last range" m

echo "the prime numbers within $n and $m is :"

for ((i=$n;i<=$m;i++))
do
	flag=0
for ((j=1;j<=$i;j++))
do
if (($i%$j==0))
then
	((flag++))
fi
done
if(($flag==2))
then
	echo $i
fi
done



