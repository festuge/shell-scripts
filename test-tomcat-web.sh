#!/bin/bash
#Author:Engr Rudolph
#Company: Etech Consulting llc
#Script will be use to test if tomcat website is up and running and take actions
if curl -s http://etechdemo.eastus.cloudapp.azure.com:9000/projects; then
	echo "tomcat is up and running"
	exit 0
else
	echo "tomcat is down"
	exit 1
	echo "The exit status was captured to be `echo $?`"
	#api call connection to azure function to trigger email notifications
fi
