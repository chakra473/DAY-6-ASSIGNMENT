#!/bin/bash -x

i=1
j=1
tails=0
heads=1
while((i<=11&&j<=11))
do
randomCheck=$(($RANDOM%2))
case $randomCheck in
			$tails)
		echo "$i TAILS"
		((i++))
		;;
                        $heads)
		echo "$j HEADS"
		((j++))
		;;
esac
done
