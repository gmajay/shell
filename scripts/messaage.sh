#!/bin/bash
#this script sends the messagge to logged in user

USER=`who -T | grep $1 | awk '{print $1}'`

if [ -z $1 ]
then 
  echo "user not logged on"
  exit 0
fi

MESG=`who -T  | grep ansible | awk '{print $2}'`

if [ "$MESG" != "+" ]
then
   echo "$1 has no message permission"
   exit 1
fi

#writing the message to ansible user
if [ -z $2 ]
then
  echo "message not found"
  exit 2
fi

TERMINAL=`who -T | grep ansible | awk '{print $3}'`
echo " `write $1 $TERMINAL $2 "
