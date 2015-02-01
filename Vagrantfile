# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "hashicorp/precise64"
  config.vm.host_name = "in2it-phpqa"
  config.vm.network "private_network", ip: "192.168.166.166"
  config.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id, "--memory", "1024"]
  end
  config.vm.provision "puppet" do |puppet|
      puppet.manifests_path = "provision/manifests"
      puppet.manifest_file  = "site.pp"
      puppet.module_path   = "provision/modules"
    end
end
