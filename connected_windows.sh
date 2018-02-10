#!/bin/sh
#connected_windows.sh
#jtbright 02.08.2018
grep "Connected to host" /opt/arcsight/connectors/connector_?/current/logs/agent.lo* | awk '{print $7}' | sed 's/\[//g;s/],//g' | sort -u
