#!/bin/bash

for i in 1 2 3 4 5 
do 
	echo "the value is $i " 
	b = $i
	echo " `expr  $b \* 1  + 1` "
done
