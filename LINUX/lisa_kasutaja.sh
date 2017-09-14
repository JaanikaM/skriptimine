#!/bin/bash
#
#Jaanika Muurisepp
# 14.09.2017
#Kasutaja lisamine ilma paroolita
#
clear
#
echo -n "Sisesta kasutajanimi: "
read kasutajanimi
useradd -m $kasutajanimi
#
# lisame kasutajale bash kooriku, kuna vaikimisi on see sh koorikuga
usermod -s /bin/bash $kasutajanimi || exit 1
#vajadusel, kui meil olemas spetskasutaja kodukataloogi s2tted
cp /etc/skel/.* /home/$kasutajanimi 
#
#Utleme, et kasutaja on lisatud
echo "$kasutajanimi on loodud."
# skripti lopp
exit
