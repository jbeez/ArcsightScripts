#!/bin/sh
#getOS.sh
#loop code to reach out to windows host to discern the OS on it
#usage getOS.sh ./serverlist.txt
#CREDS file follows smbclient format, ex
#username=NTDOM\username
#password=PWHERE
#domain=ad-domainname.local
#
#jtbright 02.08.2018
for s in $(cat $1); do
SN=$(echo $s | cut -d "." -f1)
D=$(echo $s | cut -d "." -f 2-)
echo "["$s,
/usr/bin/smbclient -A ./CREDS -g \\\\$s\\ -L $SN | egrep ^Domain | sort -u
done
