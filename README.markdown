ELK Pcap Demo 
=====================

## Resume

This demo aims to monitor data throw the use of libpcap alike plugins, what means you can actually monitor your network traffic throw Logstash and the ELK stack. If you ask yourself, why to monitoring network traffic, you can take a look at this sans report ( http://www.sans.org/reading-room/whitepapers/logging/importance-logging-traffic-monitoring-information-security-1379).

This demo is configured as a Vagrant machine, so you need vagrant installed in your machine before running it.

## Getting started

To get get started you need to log into the vagrant machine using ```vagrant ssh```, then you will see a layout like

```
vagrant@vagrant-ubuntu-trusty-64:~$ du -h -d 2 | grep service
83M	./services/logstash
62M	./services/elasticsearch
145M	./services
``` 

where you will find a copy of elasticsearch and logstash that can be used to injest the data.

The basic steps to get this strated would be to:

* Start elasticsearch by using the command ```bin/elasticsearch``` keep in mind to change your ```cluster.name``` :+1:.
* Inject data throw logstash.
* See data throw Kibana


### Injesting data with logstash

To injest data with LS you can use the ```logstash-input-pcap``` plugin, you can install this plugin to the current ls instance with ```bin/plugin install logstash-input-pcap``` from your LS path.

After you've made the pcap input available for Logstash you can process to create your configuration, for this you can take imagionation, or even use the [pcap-plugin.conf](pcap-plugin.conf) file, the only variable you will need to change is the interface name to match your computer config.

To start injesting you can use a command similar to:

```sudo $LOGSTASH_HOME/bin/logstash -f pcap-plugin.conf``` 

### Kibana

While your data is injesting, you can download [Kibana](https://www.elastic.co/products/kibana) and start creating your dashboards.
