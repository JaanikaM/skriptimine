#!/bin/bash
#
# Kasutajate lisamine
#
clear
if [$# -ne 1 ]; then
  echo "Fail on korras."
  for nimi in $(cat $failinimi)
  do
    #Sellega peaks faili sisu olema nähtav,  kui fail on kättesaadav, siis nüüd tuleb echo asemele kirjutada vajalik skript
    #echo $rida
    ./lisa_kasutaja.sh $nimi #Sellega laseme lisa_kasutaja skripti tööle
   done
  else
   echo "ERROR failiga $failinimi"
  fi
#parameetrite kontrolli lõpp
fi
exit
