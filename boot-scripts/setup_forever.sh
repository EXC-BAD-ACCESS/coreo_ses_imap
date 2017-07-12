#!/bin/bash

echo "forever-service install $APP_NAME --script /var/app/current/start.js -o \" $APP_STARTUP_ARGS\""
forever-service install $APP_NAME --script /var/app/current/start.js -o " $APP_STARTUP_ARGS"
service $APP_NAME start

echo "forever-service install renderer --script /var/app/current/renderer.js"
forever-service install renderer --script /var/app/current/renderer.js
service renderer start
