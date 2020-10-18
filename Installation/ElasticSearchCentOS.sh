#!/bin/bash



echo step 1
sudo rpm --import https://artifacts.elastic.co/GPG-KEY-elasticsearch

echo step 2
curl -O https://https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.6.0-x86_64.rpm

echo step 3
sudo rpm install elasticsearch

echo step 4
sudo systemctl enable elasticsearch

echo step 5
sudo systemctl start elasticsearch

echo step 6
sudo systemctl status elasticsearch

echo step 7

