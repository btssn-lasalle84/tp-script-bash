#!/bin/bash
i=1
while [ "$i" -lt 101 ]
do
  rmdir "toto$i"
  i=$(( $i + 1 ))
done
