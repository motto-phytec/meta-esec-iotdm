#!/bin/sh

FILE="config/esec.config"

if [ -f "${FILE}" ]; then
    condition=$(jq .awsclient < $FILE | sed -r 's/["]+//g')
    [ "$condition" = start ] && awsclient
fi
exit 0
