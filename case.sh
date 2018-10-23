#!/bin/bash
#working on case stetement to check the dir exists or not
#df= `df -h / | grep -v "Avail"  | awk '{print $4}' | cut -c 1,2`
df= `df -h / | grep -v "Avail"  | awk '{print $4}' | cut -b 1,2`
dir=sonarqube-7.3

case $1 in 
 delete)
	if [ -d $dir ]
	then
	  rm -rf ./$dir
	else 
	  echo "the directory doesn't exists"
	fi
	;;
	
  list)
	echo "listing the files and directories"
	ls -lrt .
	;;
 
  ds)
	echo "cheking the free space"
	if [ "$df" -ge "12" ]
	  then
	    echo "need to free up some space"
	  else
	    echo "nothing to do"
	fi
	;;

  *)
	echo "not entered anything"
	;;
esac 
