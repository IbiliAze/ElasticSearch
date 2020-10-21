#!/bin/bash


[ Test Nodes & Cluster ]

curl localhost:9200/_cat

curl localhost:9200/_cat/nodes?v #verbose



[ PKI ]

sudo /usr/share/elasticsearch/bin/elasticsearch-certutil ca --out /etc/elasticsearch/ca --pass elasticsearch_cai #CA
sudo /usr/share/elasticsearch/bin/elasticsearch-certutil cert --ca /etc/elasticsearch/ca --ca-pass elasticsearch_ca  --name master1 --dns ip-172-31-72-12.ec2.internal --ip 172.31.72.12 --out /etc/elasticsearch/master1 --pass elastic_master1
sudo ls /etc/elasticsearch
sudo /usr/share/elasticsearch/bin/elasticsearch-certutil cert --ca /etc/elasticsearch/ca --ca-pass elasticsearch_ca  --name data1 --dns ip-172-31-39-228.ec2.internal --ip 172.31.39.228 --out /etc/elasticsearch/data1 --pass elastic_data1
sudo mv /etc/elasticsearch/data1 /tmp
sudo chown $USER:$USER /tmp/data1



