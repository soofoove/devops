#!/bin/bash
URL="http://webserver:80"
LOG_FILE="http_status.log"

STATUS_CODE=$(curl -o /dev/null -s -w "%{http_code}" $URL)

if [[ ${STATUS_CODE:0:1} != "2" && ${STATUS_CODE:0:1} != "3" ]]; then
    echo "$(date) - Status code: $STATUS_CODE" >> $LOG_FILE
fi
