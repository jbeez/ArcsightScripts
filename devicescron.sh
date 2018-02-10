#!/bin/sh
#devicescron.sh
#jtbright 1/2018
/root/bin/devices.sh >/opt/arcsight/aps/webapps/platform-ui/devices/$(date +%m%d)-$(hostname -s).csv
