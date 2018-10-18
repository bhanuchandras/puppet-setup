#!/usr/bin/env bash
sudo yum update -y
sudo rpm -Uvh https://yum.puppetlabs.com/puppetlabs-release-pc1-el-6.noarch.rpm
sudo yum install puppet puppetserver -y
sudo echo "192.168.10.22 bhanu-master" >> /etc/hosts
sudo echo "192.168.10.23 bhanu-agent" >> /etc/hosts
sudo echo "[agent]"  >> /etc/puppetlabs/puppet/puppet.conf
sudo echo "server=bhanu-master" >> /etc/puppetlabs/puppet/puppet.conf

