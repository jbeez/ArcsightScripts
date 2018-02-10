#!/bin/sh
#getOScommand.sh
#wrapper for getOS.sh  smbclient has weird output that's hard to capture, we do that with this wrapper
#could use some improvements around output files, optimization maybe
#jtbright 02.08.2018
( ./getOS.sh ./serverlist.txt ) >test2.txt 2>&1 && egrep -A1 ^'\[' ./test2.txt | egrep -v ^-- | sed 's/^Domain.*OS=//g;s/ Server=.*//g' | tr -d '\n' | sed 's/\[//g;s/]/\n/g' | rev| cut -d',' -f -2| rev >WinOSresults.csv
