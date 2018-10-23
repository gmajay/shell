#!/bin/bash
# monitoring nginx service 

COUNT=0
TOTAL=3
SERVICE=nginx

netstat -nlp |grep 80
if [ $? -ne 0 ]
then
	

