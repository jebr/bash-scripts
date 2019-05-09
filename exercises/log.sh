#!/bin/bash

#Schrijf output naar /var/log/syslog
#Output is een random getal gemaakt door $RANDOM
logger -t log.sh -s -p local0.info -i "Message: $RANDOM"

<<COMMENT
-t	=	geeft het script weer
-s  = 	geeft de output van de log weer
-p  =   FACILITIES AND LEVELS. Bijvoorbeeld user.alert of local0.info

COMMENT

function file_count(){
	for FILES in $1
	do
		wc $1* -l
	done
}

file_count /root/update.sh