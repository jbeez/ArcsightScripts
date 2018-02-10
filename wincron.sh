#!/bin/sh
#wincron.sh
#jtbright 1/2018
dumpdir="/opt/arcsight/aps/webapps/platform-ui/devices"
of="$(date +%m%d)-$(hostname -s).csv"
/root/bin/win/listconfigured.sh >$dumpdir/windows-$of
grep -i dc $dumpdir/windows-$of >$dumpdir/windc-$of
