#!/bin/sh
#syslog_configured.sh
#show all configured syslog connectors, which IP/port/protocol they are listening on and which container they are setup in.
#jtbright 01.2018
grep 'agents\[[0-9]\]\.ipaddress=\|agents\[[0-9]\]port=\|agents\[[0-9]\]\.protocol=\|agents\[[0-9]\]\.type=syslog' /opt/arcsight/connectors/connector_?/current/user/aget/agent.properties | awk -F '/' '{print $5,$9}' | sed 's/=/ /' | cut -f 1,3 -d " " | sed 's/connector/container/g;s/Raw/TCP/'
