/usr/bin/openssl s_client -showcerts -connect marketplace.saas.hpe.com:443 </dev/null 2>/dev/null| /usr/bin/openssl x509 -out marketplace.saas.hpe.com
