#!/bin/bash

if [ -z "${TIMEZONE:-}" ]; then
    TIMEZONE="America/Chicago"
fi
timezone="$(echo "$TIMEZONE" | perl -pe 's{\h}{_}g')"
rm -f /etc/localtime
cp "/usr/share/zoneinfo/${timezone}" /etc/localtime
