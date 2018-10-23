#!/bin/bash
# Direction : please pass the filename and string to be searched from the CLI


for x in `cat $1 | grep -wc $2`
do 
   echo "total number of string is $x"
done
