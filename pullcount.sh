#!/bin/sh
#Arcsight device count collection
#v1.1 jtbright 01/18/2018

if [ -z "$1" ]
        then
                md="$(date +%m%d)"
        else
                md="$1"
fi

outdir="$HOME/devicecount"
mkdir -p $outdir

if echo $md | egrep '^[0-9]+$' >/dev/null 2>&1
then
				if [ $md -ge 0100 -a $md -le 1232 ]; then
{
wget -qO- https://connectorappliance1/platform-ui/devices/$md-connectorappliance1hostname.csv; \
wget -qO- https://connectorappliance2/platform-ui/devices/$md-connectorappliance2hostname.csv; \
wget -qO- https://connectorappliance3/platform-ui/devices/$md-connectorappliance3hostname.csv; 
} | cut -d ',' -f 3 - | awk '{s+=$1} END {print s}' > $outdir/$md-devicecount.csv
echo "File output to $outdir/md-devicecount.csv" && cat $outdir/$md-devicecount.csv
				else
								echo "Out of date range, eg. MMDD format"
				fi
else
				echo "Month and Day in numeric format only, eg. 0125 for Jan 25th"
fi

exit 0
