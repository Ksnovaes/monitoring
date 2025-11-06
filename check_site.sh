#!/bin/bash

SITE_URL="https://www.flamengo.com.br/"
STATUS_CODE=$(curl -s -o /dev/null -w "%{http_code}" $SITE_URL)

if [ $STATUS_CODE -eq 200 ]; then 
    echo "Success: the website $SITE_URL is online (Status: $STATUS_CODE)"
else
    echo "Error: the website $SITE_URL is not online (Status: $STATUS_CODE)"
    
    # error
    exit 1
fi