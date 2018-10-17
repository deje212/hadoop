#!/bin/bash

OUTPUTFILE=`echo $1 | sed 's/.csv/_clean.csv'/g`
if [ "$#" -eq  "0" ]
   then
     echo "Penggunaan : $0 namafile.csv"
 else
  var="$(cat $1 | awk '{printf "%s,%s\n", NR,$0}'  | tail -n +2 > $OUTPUTFILE)" 
  echo "SUCCESS -  Result : $OUTPUTFILE"
 fi
