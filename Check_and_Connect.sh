#!/usr/bin/env bash

cd "$(dirname "$0")";

# Export env vars
export $(grep -v '^#' .env | xargs)

wget -q --spider http://google.com

if [ $? -eq 0 ]; then
    # Connected to Internet, so do nothing
    exit
else
    # Not connected to Internet
    # Magic command to connect to IITB CC
    curl --noproxy '*' -s --location-trusted -u $LDAP_ID:$ACCESS_TOKEN "https://internet-sso.iitb.ac.in/login.php" > /dev/null
fi