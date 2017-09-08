#!/bin/bash
#
#Jaanika Müürisepp
#
#Kasutajate lisamine
#
clear
if [ $(id -u) -eq 0 ]; then
	read -p "Sisesta kasutajanimi: " username
	read -s -p "Sisesta parool: " password
	egrep "^$username" /etc/passwd > /dev/null
	if [ $? -eq 0 ]; then
		echo "$username eksisteerib!"
		exit 1
	else
		pass=$(perl -e 'print crypt($ARVG[0], "password")' $password)
		useradd -m -p $pass $username

		[ $? -eq 0 ] && echo "Kasutaja on süsteemi lisatud." || echo "Kasutaja juba eksisteerib."
	fi
else
	echo "Ainult root saab kasutajaid lisada!"
	exit 2
fi
