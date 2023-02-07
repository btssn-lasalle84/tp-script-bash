#!/bin/bash

testNotes()
{
  echo -e "\n0\n15\n10\n.\n" > "${outputDir}/.saisie-notes"
  result=`./note.sh < "${outputDir}/.saisie-notes"`
  rtrn=$?
  assertEquals "0" "${rtrn}"
  #assertEquals "calcul de la somme" "Somme = 25" "${result}"
  assertContains "calcul de la somme" "${result}" "Somme = 25"
}

testAucuneNote()
{
  echo -e "\n.\n" > "${outputDir}/.saisie-notes"
  result=`./note.sh < "${outputDir}/.saisie-notes"`
  rtrn=$?
  assertEquals "0" "${rtrn}"
  assertEquals "calcul de la somme" "" "${result}"
}

oneTimeSetUp()
{
  outputDir="${SHUNIT_TMPDIR}/output"
  mkdir "${outputDir}"
}

# Charge et lance shUnit2
. ./tests/shunit2