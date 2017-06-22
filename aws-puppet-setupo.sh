#https://www.digitalocean.com/community/tutorials/how-to-install-puppet-4-in-a-master-agent-setup-on-centos-7

sudo bash
timedatectl list-timezones
date
sudo timedatectl set-timezone Asia/Kolkata
yum -y install ntp
sudo ntpdate pool.ntp.org

systemctl enable ntpd
sudo rpm -ivh https://yum.puppetlabs.com/puppetlabs-release-pc1-el-7.noarch.rpm
yum -y install puppetserver

#edit /etc/sysconfig/puppetserver to change JAVA_ARGS="-Xms512m -Xmx512m -XX:MaxPermSize=256m" to appropritate size
sed -i 's/-Xmx2g/-Xmx512m/g' /etc/sysconfig/puppetserver
sed -i 's/-Xms2g/-Xms512m/g' /etc/sysconfig/puppetserver

systemctl start puppetserver
systemctl enable puppetserver
