#!/bin/bash
# mkrep.sh

# syntaxe 1
i=1
while [ "$i" -lt 101 ]
do
  mkdir "toto$i"
  chmod 750 "toto$i"
  i=$(( $i + 1 ))
done

# syntaxe 2
#for ((i=1; i<=100; ++i))
#do
#  mkdir "toto$i"
#  chmod 750 "toto$i"
#done

