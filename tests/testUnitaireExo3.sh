#!/bin/bash

testPetitVoyage()
{
  result=`./voyage.sh 1`
  assertEquals "distance est inférieure ou égale à 2km" "petit voyage" "${result}"

  result=`./voyage.sh 2`
  assertEquals "distance est inférieure ou égale à 2km" "petit voyage" "${result}"
}

testMoyenVoyage()
{
  result=`./voyage.sh 3`
  assertEquals "distance est inférieure ou égale à 40 km mais supérieure à 2km" "moyen voyage" "${result}"

  result=`./voyage.sh 40`
  assertEquals "distance est inférieure ou égale à 40 km mais supérieure à 2km" "moyen voyage" "${result}"
}

testGrandVoyage()
{
  result=`./voyage.sh 41`
  assertEquals "distances supérieures à 40 km" "grand voyage" "${result}"
}


# Charge et lance shUnit2
. ./tests/shunit2