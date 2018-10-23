#!/bin/bash
a=1

while [ $a -le 20 ]
do 
	a=`expr $a \* 2`
	echo "the value is $a"
done


