#!/bin/bash
# voyage.sh

# Il faut un et un seul argument
if [ $# -ne "1" ]
then
    echo "Usage: $(basename $0) <distance>"
    exit 1
fi

# Il faut une distance numérique
if [[ "$1" =~ [^0-9]+ ]]
#if ! [ "$1" -eq "$1" ] 2>/dev/null
then
    echo 'la distance doit être un nombre !'
    exit 2
fi

# syntaxe 1
distance=$1
if [ $distance -le 2 ]
then
    voyage=petit
elif [ $distance -gt 40 ]
then
    voyage=grand
else
    voyage=moyen
fi
echo "$voyage voyage"

# syntaxe 2
#distance=$1
#if ((distance <= 2))
#then voyage=petit
#elif ((distance > 2)) && ((distance <= 40))
#then voyage=moyen
#else voyage=grand
#fi
#echo "$voyage voyage"

exit 0