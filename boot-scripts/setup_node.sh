#!/bin/bash

coreo_dir="$(pwd)"

mkdir -p /var/app/current
cd /var/app/current

aws s3 --region $APP_BUCKET_REGION cp s3://$APP_BUCKET/$APP_BUCKET_PATH/$APP_ARCHIVE_NAME/$APP_ARCHIVE_NAME.tar.gz .

tar -zxvf $APP_ARCHIVE_NAME.tar.gz

chmod 400 bitbucket.gtslabs.io
mv bitbucket.gtslabs.io ~/.ssh
chmod 400 config
chown root:root config
mv config ~/.ssh

eval `ssh-agent -s`
ssh-add ~/.ssh/bitbucket.gtslabs.io
ssh -o StrictHostKeyChecking=no bitbucket.org

yarn install
yarn install

cd $coreo_dir
