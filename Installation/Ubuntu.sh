#!/bin/bash


echo step 1
sudo apt install -y gnupg

echo step 2
wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -

echo step 3
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list

echo step 4
sudo apt update -y

echo step 5
sudo apt-get install -y mongodb-org

echo step 6
sudo systemctl start mongod.service

echo step 7
sudo systemctl enable mongod.service

echo step 8
sudo systemctl status mongod.service

echo step 9
sudo cat /var/log/mongodb/mongod.log | grep 27017

