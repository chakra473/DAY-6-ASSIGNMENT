#!/bin/bash -x

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
rev1=0
function checkPalindrom1()
{
while (($m>0))
do
rem1=$(($m%10))
rev1=$((($rev1*10)+$rem1))
m=$(($m/10))
done
}

read -p "enter a number :" n
read -p "enter a number :" m
temp=$n
temp1=$m
checkPalindrom $n
checkPalindrom1 $m
if (($rev==$temp))&&(($rev1==$temp1))
then
echo "both the numbers are palindrom"
elif (($rev==$temp))||(($rev1==$temp1))
then
echo "one of the number is palindrom"
else
echo "both the numbers are not palindrom"
fi


