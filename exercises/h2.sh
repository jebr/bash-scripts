#!/bin/bash

#Error checking

#ls /etc/jeroen

#Output wordt 1 als folder niet bestaat en 0 als hij wel bestaat
#echo "$?"

#Ping google.com 1 keer en controleer op een exit status
HOST="google.com"
ping -c 1 $HOST > null
if [ "$?" -eq "0" ]
then
  echo "$HOST reachable"
else
  echo "$HOST unreachable"
fi

#Ping google.com en voer echo uit na succesvolle Ping
ping -c 1 $HOST && echo "$HOST is reachable"


#Vragen
if [ "$?" == "0" ]
then
  echo "This script will exit with a 0 exit status"
fi
