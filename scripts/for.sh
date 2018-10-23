#!/bin/bash

for i in `ls /home/ubuntu/shell`
do 
	echo $i
	sort -r $i
done
