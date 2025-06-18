#!/bin/bash
set -e
export DEBIAN_FRONTEND=noninteractive
apt update -y
apt install -y postgresql-client unzip
# 
apt install -y nginx
systemctl enable nginx
systemctl start nginx
# 
apt update -y
apt install -y certbot python3-certbot-nginx
# 
echo "Setup done" > /var/log/userdata.log