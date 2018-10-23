#!/bin/bash
#counting the total no of files in the dir

dir=`echo $PATH | sed 's/:/ /g'`
total=0

for D in $dir
do
   FILE=`ls $D`
   for file in $D; do
   file= `expr $total + 1`
   done
done

