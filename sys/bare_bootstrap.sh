#!/usr/bin/env bash

# Installs java-7
apt-get update
apt-get install -y openjdk-7-jdk

##
# In case we want to use the deb repos to install the services in case
##

#wget -qO - https://packages.elasticsearch.org/GPG-KEY-elasticsearch | sudo apt-key add -
#add-apt-repository "deb http://packages.elasticsearch.org/elasticsearch/1.4/debian stable main"
#apt-get update && sudo apt-get install elasticsearch

#add-apt-repository "deb http://packages.elasticsearch.org/logstash/1.4/debian stable main"
#apt-get update && sudo apt-get install logstash
