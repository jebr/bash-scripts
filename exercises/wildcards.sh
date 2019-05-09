#!/bin/bash

<<COMMENT

* 				= matches zero or more characters
? 				= matches exactly one of any character
[] 				= characters in ranges
[0-3]			= custom range
[[:digit:]]		= named character classes

COMMENT

#Voorbeeld van het gebruik van wildcards
echo "Voorbeeld 1"
cd /root/onedrive/Development/bash-scripts
#Laat de huidige locatie zien
echo "Locatie $(pwd)"
for FILE in *.sh
do
	#Laat alle .sh bestanden zien die in de folder staan
	echo "$FILE"
done

echo "" #Lege regel

#Alternatieve manier voor bovenstaande code
echo "Voorbeeld 2"
for FILES in /root/onedrive/Development/bash-scripts/exercises/*.sh
do 
	#Laat alle .sh bestanden zien die in de folder staan
	echo "$FILES"
done