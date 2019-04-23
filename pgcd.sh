#!/bin/sh
#pgcd.sh script
#Auteur : 
# - Andre-Viet Tran 2001185
# - Alexandre Keo p0992086 alexandreskeo90@gmail.com
#Fait le 23 avril 2019
#But : Calculer le pgcd de deux nombres positifs

if [ $# -ne 2 ]; then
	echo "Mauvais nombre d'argument"
	exit
fi
x=$1
y=$2
if [ "$x" -lt 0 ] || [ "$y" -lt 0 ]; then
	echo "Entrez deux entiers positifs"
	exit
fi
while [ "$x" -ne "$y" ]; 
do
	if [ "$x" -gt "$y" ]; then
		x=$(($x - $y))
	else
		y=$(($y - $x))
	fi
done
echo "pgcd de $1 et de $2 est $x"
