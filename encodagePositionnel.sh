#!/bin/bash
#encodagePositionnel.sh
#Auteur : 
# - Andre-Viet Tran 2001185
# - Alexandre Keo  p0992086 alexandreskeo90@gmail.com
#Fait le 23 avril 2019
#But : affiche un nombre(argument 1) en base (argument 2).

entier=${1#-}			
base=$2

if [ $# -ne 2 ]; then			
	echo "OUPS: 2 arguments sont requis, $# fourni"
	exit 1
fi
if ! [[ $1 =~ ^[+-]?[0-9]+$ ]]; then		
	echo "OUPS: argument 1 doit etre un entier, $1 fourni"
	exit 1
fi
if ! [[ $2 =~ ^[2-9]{1}$ ]]; then	
	echo "OUPS: argument 2 doit etre un entier entre 2 et 9 inclusivement, $2 fourni"
	exit 1
fi

resultat=""
while [ $entier -gt 0 ]; do
	mod=$(( $entier%$base ))
	resultat="$mod$resultat"
	entier=$(( $entier/$base ))
done

if [ $1 -lt 0 ]; then
	resultat="-$resultat"	 
else
	resultat="+$resultat"	 
fi

if [ $1 -eq 0 ]; then
	echo "L'encodage positionnel du nombre 0 en n'importe qu'elle base est 0"
else
	echo "L'encodage positionnel du nombre $1 en base $base est $resultat"
fi
