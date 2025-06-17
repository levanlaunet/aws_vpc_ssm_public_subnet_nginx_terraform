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
echo "Setup done" > /var/log/userdata.log