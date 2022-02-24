#!/bin/bash -x

win=1
lose=0
i=100
wincount=0
losecount=0

while ((i<200)) && ((i>0))
do
randomCheck=$(($RANDOM%2))
case $randomCheck in
			$win)
			((i++))
			((wincount++))
			;;
			$lose)
			((i--))
			((losecount++))
			;;
esac
done
echo "the gambler has $i"
echo "number of total wins $wincount"
echo "number of total lost $losecount"
