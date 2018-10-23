#!/bin/bash

if [ "$#" -eq "0" ]
then 
	var=backup
else
	var=$1
   	echo "echo $1"
fi

script_dir="/home/ubuntu/backup-script"
src_dir="/home/ubuntu/shell"
date=`date +%F\-%H\-%M`
#copy=`cp -r $src_dir/*.sh $script_dir/`


if [ ! -d "$script_dir" ]
then 
	mkdir $script_dir
	if [ "$?" = "0" ]
 	  then 
		backup=`tar -cvf  $script_dir/backup-"$date".tar  $src_dir/*`
		"$backup" >> /dev/null
	        if [ "$?" -eq "0"	]
		then 
			echo "backup has taken"
		else 
			echo "files are not copied"
		fi
	fi
else 
	echo "nothing"
fi



