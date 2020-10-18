#!/bin/bash


echo step 1
curl -O https://artifacts.elastic.co/downloads/kibana/kibana-7.6.0-x86_64.rpm

echo step 2
sudo rpm install kibana

echo step 3
sudo systemctl enable kibana

echo step 4
sudo systemctl start elasticsearch

echo step 5
sudo systemctl status elasticsearch

