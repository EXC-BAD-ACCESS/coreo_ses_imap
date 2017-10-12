#!/bin/bash

coreo_dir="$(pwd)"

echo "forever-service install $APP_NAME --script node -o \" $APP_STARTUP_ARGS\""
forever-service install $APP_NAME --script node -o " $APP_STARTUP_ARGS"
service $APP_NAME start
