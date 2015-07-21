#!/bin/bash

###############################################
# 20150721 first version by sakana
#
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
echo -e "\033[32m"
echo ""
echo "==== Install vsftpd package and start ftp service for ssh key share ===="
echo ""
echo -e "\033[33m"
sudo  yum  install   vsftpd   -y
sudo  systemctl  restart  vsftpd

# Create SSH Key for Cluster
echo -e "\033[32m"
echo ""
echo "==== Create SSH Key for Cluster ===="
echo ""
echo -e "\033[34m"
ssh-keygen  -N  ''  -t dsa  -q  -f  ~/.ssh/id_dsa



# Copy SSH Public Key to FTP Directory
echo -e "\033[32m"
echo ""
echo "==== Copy SSH Public Key to FTP Directory ===="
echo "==== Will use Machine HOSTNAME for name of ssh key ===="
echo ""
echo -e "\033[33m"
sudo  cp  ~/.ssh/id_dsa.pub  /var/ftp/pub/`hostname`.key
echo "Your HOST NAME is `hostname`"

# Show vsftpd status and ssh public key
echo -e "\033[32m"
echo ""
echo "==== Display vsftpd status and ssh public key ===="
echo ""
echo -e "\033[34m"
sudo  systemctl  status  vsftpd
echo ""
echo ""
echo "ls /var/ftp/pub  result"
ls  /var/ftp/pub


# Ask user go next script
echo -e "\033[32m"
echo ""
echo "====  You can run next script if ftp service and ssh key is create ===="
echo ""
echo -e "\033[0m"






