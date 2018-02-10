#!/bin/sh
#show_agents.sh
#jtbright 1.2018
grep 'agents\[[0-9]\]\.type=' /opt/arcsight/connectors/connector_?/current/user/agent/agent.properties | awk -F '/' '{print $5,$9}' | sed 's/=/ /' | cut -f 1,3 -d " " | sed 's/connector/container/'
