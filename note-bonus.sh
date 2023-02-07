#!/bin/bash
# note.sh

somme=0
nb=0
while [ "$saisie" != "." ]
do
  #echo -n "note : "
  read saisie
  # seulement des valeurs numériques entières
  if [ "$saisie" -eq "$saisie" ] 2> /dev/null
  then
    somme=$(( $somme + $saisie ))
    nb=$(( $nb + 1 ))
  fi
done

# au moins une note saisie
if [ $nb -gt 0 ]
then
  echo "Somme = $somme"
  moyenne=$(echo "scale=2; ${somme}/${nb}" | bc -lq)
  echo "Moyenne = $moyenne"
fi

