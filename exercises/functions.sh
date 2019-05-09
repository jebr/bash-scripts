#!/bin/bash

#Aanmaken van de functie
function hello(){
	echo "Hello world!"

	#Aanroepen andere functie
	time
}

function time(){
	echo "It's $(date +%r)"
}


#Aanroepen van de functie
hello

#Functie met argumenten
function hello-1(){
	echo "Hello $1"
}

#Aanroepen van de functie
hello-1 Jason
#Output is Hello Jason

#Functie met parameters in een loop
function hello-2(){
	for NAME in $@
	do
		echo "Hello $NAME"
	done
}
#Aanroepen van de functie met parameters
hello-2 Jeroen Lydia Stefan Thomas Esther

#Variabel altijd voor de aanroep defineeren
GLOBAL_VAR=1
function call-var(){
	echo "$GLOBAL_VAR"
	#local var alleen te gebruiken in een functie
	local TEST=2
	echo "$TEST"
}
#Aanroepen van de functie
call-var
#Error status nakijken
echo $?
#Nadat de functie met de var is uitgevoerd is de $GLOBAL_VAR overal te gebruiken
echo "$GLOBAL_VAR"



