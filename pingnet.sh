#!/bin/bash

if [ "$1" == "" ]
then
	echo "ZymyX Services"
	echo "Modo de uso: $0 192.168.0"

else
for host in {1..254};
do
ping -c 1 $1.$host | grep "64 bytes" | cut -d " " -f 4 | sed 's/.$/ ONLINE/';
done
fi 	
