#!/bin/sh
#wintest.sh
#jtbright 01.2018
SHORTNAME=$(echo $1 | cut -d "." -f1)
DOM=$(echo $1 | cut -d "." -f 2-)
echo Server: $1
/usr/bin/smbclient -A ./CREDS -g \\\\$1\\ -L $SHORTNAME | egrep ^Domain | sort -u
