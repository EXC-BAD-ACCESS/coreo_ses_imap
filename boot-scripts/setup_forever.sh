#!/bin/bash
coreo_dir="$(pwd)"
cd /var/app/current

echo "forever-service install $APP_NAME --script node_modules/ses-imap -o \" $APP_STARTUP_ARGS\""
forever-service install $APP_NAME --script node_modules/ses-imap -o " $APP_STARTUP_ARGS"
service $APP_NAME start

cd $coreo_dir
