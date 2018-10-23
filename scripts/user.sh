#!/bin/bash
#Description : counts the user

FILE=`cat /etc/passwd | cut -d":" -f1`
COUNT=0
for user in $FILE
do 
    let "COUNT += 1"
   echo "the username is $user $COUNT"
 #  echo "total number of users are `expr $COUNT \+ 1`"
	echo "the number of users are $COUNT"
done


