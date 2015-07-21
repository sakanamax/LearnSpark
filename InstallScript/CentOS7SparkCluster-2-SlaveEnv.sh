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


# Notice User must run CentOS7SparkCluster-1-MasterEnv.sh first
echo -e "\033[32m"
echo "==== This script is for Spark Slave Env ===="
echo "==== You must run CentOS7SparkCluster-1-MasterEnv.sh before you do it!! ===="
echo -e "\033[33m"

# Get Master IP
echo -e "\033[32m"
echo ""
echo "==== Please input your Master IP Address ===="
echo "==== For example  10.x.y.z ===="
echo ""
echo -e "\033[34m"
read MASTERIP
echo "Your Master IP is $MASTERIP"



# Get Master HOSTNAME
echo -e "\033[32m"
echo ""
echo "==== Please input your Master HOSTNAME ===="
echo "==== It's very import to get right key, please input it correctly ===="
echo ""
echo -e "\033[33m"
read MASTERHOSTNAME
echo "Your Master HOSTNAME is $MASTERHOSTNAME"

# Get Master SSH public key and append it to authorized_keys
echo -e "\033[32m"
echo ""
echo "==== Get Master SSH public key and append it to ~/.ssh/authorized_keys ===="
echo ""
echo -e "\033[34m"
echo "Before add the Master public key - Your ~/.ssh/authorized_keys is"
echo ""
cat  ~/.ssh/authorized_keys

echo -e "\033[32m"
echo "Add the master public key and list it"
curl  ftp://$MASTERIP/pub/$MASTERHOSTNAME.key  >>  ~/.ssh/authorized_keys
echo ""
echo -e "\033[31m"
echo "After add the Master public key - Your ~/.ssh/authoriezed_keys is"
cat  ~/.ssh/authorized_keys
echo ""
echo "-- Please make sure your Master SSH public key is correct add to authorized_keys --"
echo ""


# Ask user go next script
echo -e "\033[33m"
echo ""
echo "====  You can run next script if Master ssh key is correct add to authorized_keys ===="
echo ""
echo -e "\033[0m"






