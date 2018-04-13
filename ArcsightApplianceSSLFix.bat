@echo off
rem - backup existing config, enable the Slowloris fix, disable weak SSL protocols, set secure ciphers, turn on honor cipher order, graceful restart apache
set RC="cp /opt/local/apache/conf/httpd.conf /opt/local/apache/conf/httpd.conf.$(date +"%%Y%%m%%d") && sed -i 's/^\#R/R/;s/all -S/all -TLSv1.1 -TLSv1 -S/;s/^SSLCipherSuite .*$/SSLCipherSuite ALL:+HIGH:\!ADH:\!EXP:\!SSLv2:\!SSLv3:\!MEDIUM:\!LOW:\!NULL:\!aNULL/;s/^\#SSLH/SSLH/' /opt/local/apache/conf/httpd.conf && /opt/local/apache/bin/apachectl graceful"

set C="C:\Program Files (x86)\PuTTY\plink.exe" -ssh root@%%S %RC%

for %%S IN (CONNECTORAPPLIANCE1, CONNECTORAPPLIANCE2, LOGGERAPPLIANCE1, LOGGERAPPLIANCE2) DO (
echo ---------------
echo %%S
echo ---------------
%C%
)
