# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  config.vm.box = "centos/6"

  config.vm.define "master" do |master|
   master.vm.box = "centos/6"
   master.vm.hostname = "bhanu-master"
   master.vm.network  "public_network", ip: "192.168.10.22"
   master.vm.provider  "virtualbox" do |vb|
     vb.memory = "2048"
     vb.gui = false
   end
   #master.vm.provision :shell, path: "bootstrap_master.sh"
  end
  config.vm.define "agent" do |agent|
   agent.vm.box = "centos/6"
   agent.vm.hostname = "bhanu-agent"
   agent.vm.network  "public_network", ip: "192.168.10.23"
   agent.vm.provider  "virtualbox" do |vb|
     vb.memory = "1024"
     vb.gui = false
   end
   #agent.vm.provision :shell, path: "bootstrap.sh"
  end

  #config.vbguest.iso_path = "D:/Vagrant/tmp/VBoxGuestAdditions_5.0.20.iso"
  config.vm.synced_folder ".", "/vagrant", disabled: true

end
