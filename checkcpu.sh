#!/bin/sh
#checkcpu.sh
#jtbright 1/2018
container=0
lav=$(cat /proc/loadavg)
echo Load Average: $lav
for p in $(cat /opt/arcsight/connectors/connector_?/current/run/*.java.pid); do
					((container++))
					echo -----------------------
					echo Container: $container  PID: $p
					ps -p $p -o %cpu,%mem
done
