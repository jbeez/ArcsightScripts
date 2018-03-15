GetOS.sh

#!/bin/sh
#extrapolate windows server version from arcsight connector appliance cli
for s in $(cat $1); do
SN=$(echo $s | cut -d "." -f1)
D=$(echo $s | cut -d "." -f 2-)
echo "["$s,
/usr/bin/smbclient -A ./CREDS -g \\\\$s\\ -L $SN | egrep ^Domain | sort -u
Done
