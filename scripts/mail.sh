#!/bin/bash
# send a mail if disk utilization is more than 14%

MAIL="gmajay.6@gmail.com"
SPACE=$(df -h / | awk '{print $5 }' | grep -v "Use" | cut -d'%' -f1)


if [ $SPACE -gt 25 ]
then 
  echo "the space is occupied under root dir"
  echo " space is full" | mail -s "root space is more than $SPACE" $MAIL
  if [ $? -eq 0 ]
   then 
     echo "Mail sent to group"
   fi
  
fi
