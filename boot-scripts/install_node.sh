#!/bin/bash

yum -y install npm --enablerepo=epel
npm install -g n
n latest
rm /usr/bin/npm
ln -s /usr/local/bin/npm /usr/bin/npm
rm /usr/bin/node
ln -s /usr/local/bin/node /usr/bin/node

npm install -g yarn
ln -s /usr/local/bin/yarn /usr/bin/yarn
