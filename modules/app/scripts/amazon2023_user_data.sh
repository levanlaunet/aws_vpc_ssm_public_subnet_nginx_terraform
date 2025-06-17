#!/bin/bash
set -e
exec > /var/log/userdata.log 2>&1

echo "== START user_data =="

dnf update -y
dnf install -y postgresql15 unzip
# 
dnf install -y nginx
systemctl enable nginx
systemctl start nginx

echo "== DONE =="
              
              