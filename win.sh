#!/bin/sh
#win.sh
#output to temp similar to other scripts need to optimize
#jtbright 01.2018
grep hostname= /opt/arcsight/connectors/connector_?/current/user/agent/agent.properties | awk -F '/' '{print $5,$9}' | sed 's/=/ /' | cut -f 1,3 -d " " | sed "s/connector/$HOSTNAME-container/g;s/ /,/">/tmp/$HOSTNAME.csv
