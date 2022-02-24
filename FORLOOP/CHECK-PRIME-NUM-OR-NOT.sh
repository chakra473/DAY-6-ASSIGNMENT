#!/bin/bash -x

read -p "enter a number" n
flag=0
for ((i=2;$i<$n/2;i++))
do
	 test=$(($n%$i))
if (( $test==0 ))
then
echo "the number is not prime"
exit 0
fi
done
echo "the number is prime"


