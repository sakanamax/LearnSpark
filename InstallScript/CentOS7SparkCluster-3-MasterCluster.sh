#!/bin/bash

###############################################
# 20150721 first version by sakana
# 20150806 fix until
#
###############################################

# Update source
#echo -e "\033[32m"
#echo ""
#echo "==== Start update ===="
#echo ""
#echo -e "\033[33m"
#apt-get   update


# Notice User must run CentOS7SparkCluster-2-SlaveEnv.sh first
echo -e "\033[30m"
echo "==== This script is for Spark Master add Slave node and start cluster service ===="
echo "==== You must run CentOS7SparkCluster-2-SlaveEnv.sh before you do it!! ===="
echo -e "\033[33m"

# Add Slave SSH Public key to ~/.ssh/known_hosts and add Slave to $SPARK_HOME/conf/slaves
echo -e "\033[32m"
echo ""
echo "==== Add Slaves SSH Public Key to ~/.ssh/known_hosts ===="
echo "==== Add Slaves to spark/conf/slaves ===="
echo ""
echo -e "\033[34m"

echo "==== Before add SSH public key to ~/.ssh/known_hosts ===="
echo "Your known_hosts key is `wc -l ~/.ssh/known_hosts` "
echo "Your ~/spark/conf/slaves  is `wc -l $HOME/spark/conf/slaves`"

echo -e "\033[33m"
SLAVEIP='SLAVEIP'
STOP=''

until [ "$STOP" = "stop" ]; 
do
	echo -e "\033[33m"
	echo "== Let's add Slave SSH public key to ~/.ssh/known_hosts =="
	echo "== Let's add Slave to ~/spark/conf/slaves=="
	echo "== Please input your Slave IP, like 10.x.y.z =="
	read SLAVEIP
	echo ""
	echo -e "\033[32m"
	echo "Your Slave IP is $SLAVEIP"
	echo "Add $SLAVEIP SSH public key to ~/.ssh/known_hosts"
	ssh-keyscan  $SLAVEIP  >>  ~/.ssh/known_hosts
	echo "Add $SLAVEIP to ~/spark/conf/slaves"
	echo $SLAVEIP  >>  $HOME/spark/conf/slaves
	echo ""
	echo -e "\033[31m"
	echo "== If you finish input your all slaves IP, please input stop, if you want add more slave IP enter anything  =="
	read STOP
done

# delete stop in ~/spark/conf/slaves
sed  -i  '/^stop$/d'  ~/spark/conf/slaves

echo -e "\033[34m"

echo "==== After add SSH public key to ~/.ssh/known_hosts ===="
echo "Your known_hosts key is `wc -l ~/.ssh/known_hosts` "
echo "Your ~/spark/conf/slaves  is `wc -l $HOME/spark/conf/slaves`"

# Add Master IP to conf/spark-env.sh
echo -e "\033[32m"
echo ""
echo "==== Add Master IP to ~/spark/conf/spark-env.sh ===="
echo ""
echo -e "\033[33m"
echo "export  SPARK_MASTER_IP=`ifconfig eno1 | grep broadcast | cut -d ' ' -f 10`" >>  ~/spark/conf/spark-env.sh
echo "== Check ~/spark/conf/spark-env.sh ="
cat  ~/spark/conf/spark-env.sh


# Start Spark Standalone Cluster Service
echo -e "\033[32m"
echo ""
echo "==== Start Spark Standalone Cluster Service ===="
echo ""
echo -e "\033[34m"
~/spark/sbin/start-all.sh
echo -e "\033[31m"
echo ""
echo "==== Please use jps command to check procss in Master and Worker ( Slave ) ===="
echo "==== You could check with SparkUI with cluster status http://`ifconfig eno1 | grep broadcast | cut -d ' ' -f 10`:8080  ===="
echo -e "\033[0m"


