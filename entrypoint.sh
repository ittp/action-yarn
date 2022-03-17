#!/bin/sh -l

set -e

echo "Starting..."

npm install -g yarn pm2

sh -c "$*"

YARN_VER=$(yarn -v)
PM2_VER=$(pm2 -v)
echo $YARN_VER
echo $PM2_VER

echo "Finished!"
