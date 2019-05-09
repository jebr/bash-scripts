#!/bin/bash

#Dit is een BASH script voor het automatiseren van NMAP commando's

#Variables


#Fucntions
nmap-help(){

cat << COMMENT

NMAP bash is a script to automate NMAP commands (Debian based)

Commands:
  update = full system update

  Running update with no options will update the apt cache and
  perform a full distrubution update automaticly

  Options:
  --help = show this help page
COMMENT
}


#Execute
if [ "$1" == "--help" ]
then
  clear
  nmap-help
exit
fi