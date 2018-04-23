#!/bin/sh
#create the devices directory under the arcsight web content
#/root/bin/devices.sh >/opt/arcsight/aps/webapps/platform-ui/devices/$(date +%m%d)-$(hostname -s).csv
#jtbright 01.11.2018 v1.2

c=1
h=$(hostname -s)
while [ #c -lt 9]; do
        /opt/arcsight/connectors/connector_$c/current/bin/arcsight -quiet agentcommand -c status | egrep ^Tracking:\ device\ count | sed "s/[.]//g;s/\Tracking: device count/$h,container$c,/g"
        let c=c+1
done
