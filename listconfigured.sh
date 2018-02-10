#!/bin/sh
#example usage
#/root/bin/win/listconfigured.sh >/opt/arcsight/webapps/platform-ui/devices/Windows-$(date +%m%d)-$(hostname -s).csv
#jtbright 01.23.2018 v1.0

h=$(hostname -s)
grep hostname= /opt/arcsight/connectors/connector_?/current/user/agent/agent.properties | awk -F '/' '{print $5,$9}' | sed 's/=/ /g' | cut -f 1,3 -d " " | sed "s/connector/$h\_container/g;s/ /,/g"
