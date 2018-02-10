#!/bin/sh
#win_configured.sh
#jtbright 01.2018
grep hostname= /opt/arcsight/connectors/connector_?/current/user/agent/agent.properties | awk -F '/' '{print $5,$9}' | sed 's/=/ /g' | cut -f 1.3 -d " " | sed 's/connector/container/g'
