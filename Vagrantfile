# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.provider "virtualbox" do |v|
    v.memory = 4096
    v.cpus = 4
  end

  config.vm.network "forwarded_port", guest: 9200, host: 9200 # Elasticsearch

  config.vm.provision :shell do |sh|
    sh.path = "sys/bare_bootstrap.sh"
    sh.privileged = true
  end

  config.vm.provision :shell do |sh|
    sh.path = "sys/bootstrap.sh"
    sh.privileged = false
  end

  config.vm.provision :file do |file|
    file.source =  "./logstash/pcap.config"
    file.destination = "pcap.config"
  end

  config.vm.provision :file do |file|
    file.source =  "./logstash/pcap-template.json"
    file.destination = "pcap-template.json"
  end

  config.vm.provision :file do |file|
    file.source =  "./logstash/randomware.pcap.csv"
    file.destination = "ransomware.pcap.csv"
  end

  config.vm.provision :file do |file|
    file.source =  "./logstash/traffic.pcap.csv"
    file.destination = "traffic.pcap.csv"
  end

end
