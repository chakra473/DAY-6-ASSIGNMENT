#!/bin/bash -x

function checkPrime()
{
for ((i=1;$i<=$n;i++))
do
      if (($n%$i==0))
then
	((count++))
fi
done
}
rev=0
function checkPalindrom()
{
while (($n>0))
do
rem=$(($n%10))
rev=$((($rev*10)+$rem))
n=$(($n/10))
done
}
read -p "enter a number :" n
temp=$n
count=0
checkPrime $n
if (($count==2))
then
	echo "this number is  prime number"
	checkPalindrom $n
if (($temp==$rev))
then
	echo "it is both prime and palindrom number"
else
	echo "it is  prime but not palindrom number"
fi
else
	checkPalindrom $n
if (($temp==$rev))
then
	echo "it is palindrom but not a prime number"
else
	echo "it is neither prime nor palindrom number"
fi
fi

