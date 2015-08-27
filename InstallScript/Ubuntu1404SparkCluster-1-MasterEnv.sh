#!/bin/bash

###############################################
# 20150721 first version by sakana
# 20150827 clone CentOS version for Ubuntu and fix it
#
###############################################

# Update source
#echo -e "\033[32m"
#echo ""
#echo "==== Start update ===="
#echo ""
#echo -e "\033[33m"
#apt-get   update


# Install vsftpd package for share ssh public key
echo "\033[32m"
echo ""
echo "==== Install vsftpd package and start ftp service for ssh key share ===="
echo ""
echo "\033[33m"
sudo  apt-get update

sudo  apt-get -y  install   vsftpd

# By default vsftpd not all anonymous login, change it to allow anonymous

sudo sed -i 's/anonymous_enable=NO/anonymous_enable=Yes/' /etc/vsftpd.conf

sudo  service vsftpd restart

# Create SSH Key for Cluster
echo "\033[32m"
echo ""
echo "==== Create SSH Key for Cluster ===="
echo ""
echo "\033[34m"
ssh-keygen  -N  ''  -t dsa  -q  -f  ~/.ssh/id_dsa



# Copy SSH Public Key to FTP Directory
echo "\033[32m"
echo ""
echo "==== Copy SSH Public Key to FTP Directory ===="
echo "==== Will use Machine HOSTNAME for name of ssh key ===="
echo ""
echo "\033[33m"
sudo  cp  ~/.ssh/id_dsa.pub  /srv/ftp/`hostname`.key
echo "Your HOST NAME is `hostname`"

# Show vsftpd status and ssh public key
echo "\033[32m"
echo ""
echo "==== Display vsftpd status and ssh public key ===="
echo ""
echo "\033[34m"
sudo  service  vsftpd status
echo ""
echo ""
echo "ls /srv/ftp  result"
ls  /srv/ftp


# Ask user go next script
echo "\033[32m"
echo ""
echo "====  You can run next script if ftp service and ssh key is create ===="
echo ""
echo "\033[0m"






