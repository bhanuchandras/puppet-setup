#!/usr/bin/env bash
sudo yum update -y
sudo rpm -Uvh https://yum.puppetlabs.com/puppetlabs-release-pc1-el-6.noarch.rpm
sudo yum install puppet puppetserver -y
