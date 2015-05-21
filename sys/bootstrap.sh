#!/usr/bin/env bash

##
# Installing Elasticsearch
##

mkdir services

ELASTIC_HOME=services/elasticsearch
ELASTIC_TAR=elasticsearch-1.5.2.tar.gz

wget https://download.elasticsearch.org/elasticsearch/elasticsearch/$ELASTIC_TAR
tar -xvzf $ELASTIC_TAR
mv elasticsearch-1.5.2 $ELASTIC_HOME


##
# Download Marvel.
##

MARVEL_FILENAME="marvel-latest.zip"
MARVEL_DOWNLOAD_URL="https://download.elasticsearch.org/elasticsearch/marvel/$MARVEL_FILENAME"
wget $MARVEL_DOWNLOAD_URL
$ELASTIC_HOME/bin/plugin -i elasticsearch/marvel/latest -u file:/home/vagrant/marvel-latest.zip

##
# Installing logstash
##
LOGSTASH_TAR=logstash-1.5.0.tar.gz
wget http://download.elastic.co/logstash/logstash/$LOGSTASH_TAR

mkdir -p services/logstash
mv $LOGSTASH_TAR services/logstash


##
# Installing RVM
##

gpg --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3
curl -sSL https://get.rvm.io | bash -s stable
