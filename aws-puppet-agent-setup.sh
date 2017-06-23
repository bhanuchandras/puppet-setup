
sudo bash
rpm -ivh https://yum.puppetlabs.com/puppetlabs-release-pc1-el-7.noarch.rpm
yum -y install puppet-agent
/opt/puppetlabs/bin/puppet resource service puppet ensure=running enable=true
/opt/puppetlabs/bin/puppet agent --server ip-172-31-8-199.ap-south-1.compute.internal --waitforcert 60 --test  # <ip address of the master>
