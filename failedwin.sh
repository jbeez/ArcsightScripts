#!/bin/sh
#failedwin.sh
#jtbright 01.2018
grep "Could not connect to host" /opt/arcsight/connectors/connector_?/current/logs/agent.log | awk -F '[' '{print $1,$6}' | grep ] | cut -f 1,2 -d " " | cit =f 5,8 -d "/" | sort -u | sed 's/.$//g;s/\/agent.log://g;s/connector/container/g'
