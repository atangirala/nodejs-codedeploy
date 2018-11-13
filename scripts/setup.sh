#!/bin/bash
date=$(date +"%m-%d-%y-%H-%S")
/etc/init.d/node-app stop
rm -rf /var/run/pid/app.pid
mkdir -p /mnt/app-$date
cd /var/www/html
mv * /mnt/app-$date
