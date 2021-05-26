#!/bin/bash
#!/bin/bash

########## ONLY EXECUTE THIS SCRIPT IF YOU HAVE NOT ALREADY DOWNLOADED ELASTICSEARCH AND LOGSTASH #############
## zip unzip functionality.
sudo apt-get install zip unzip


########## INSTALL LOGSTASH AS A SYSTEM SERVICE
curl -fsSL https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -

echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-7.x.list

sudo apt update

## linked test order creation.
## for eg if i select fasting + pp for a patient.
## will do background creation of three linked orders and show them.
## install 6.8.13
sudo apt install logstash

sudo apt install elasticsearch=7.11.2


## give permissions to all users to write into the elasticsearch logs.
## this is because the elasticsearch and logstash users need to be able to write to the log files.
sudo chmod -R 777 /var/log/elasticsearch
sudo chmod -R 777 /var/log/logstash

cat ./es.options >> /etc/elasticsearch/jvm.options.d/es.options