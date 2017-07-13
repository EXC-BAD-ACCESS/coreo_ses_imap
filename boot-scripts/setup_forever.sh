#!/bin/bash
coreo_dir="$(pwd)"
cd /var/app/current

echo "forever-service install $APP_NAME --script start.js -o \" $APP_STARTUP_ARGS\""
forever-service install $APP_NAME --script start.js -o " $APP_STARTUP_ARGS"
service $APP_NAME start

echo "forever-service install renderer --script renderer.js"
forever-service install renderer --script renderer.js
service renderer start

cd $coreo_dir
