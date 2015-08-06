#!/bin/bash

############################################################
# change log 20150714 - Add sbt install
# change log 20150730 - Add Hadoop HDFS with single machine
# change log 20150803 - Add Hadoop HDFS with Cluster
#
############################################################

# Update source
#echo -e "\033[32m"
#echo ""
#echo "==== Start update ===="
#echo ""
#echo -e "\033[33m"
#apt-get   update



# Download Hadoop 2.6 package
echo -e "\033[32m"
echo ""
echo ""
echo "==== Start install Hadoop 2.6  ===="
echo ""
echo -e "\033[0m"
wget   ftp://apache.mirrors.pair.com/hadoop/common/hadoop-2.6.0/hadoop-2.6.0.tar.gz
tar   zxvf  hadoop-2*.tar.gz
mv    ~/hadoop-*/   ~/hadoop/

echo  'export  JAVA_HOME=`readlink  -f   /usr/bin/java | sed "s:bin/java::"`'  >>   ~/hadoop/etc/hadoop/hadoop-env.sh

# Setting up Hadoop env
echo -e "\033[32m"
echo ""
echo ""
echo "==== Setting up Hadoop HDFS env  ===="
echo ""
echo -e "\033[33m"
# There is only allow 1 <configuration> in core-site.xml
# So we delete old one
sed  -i  '/^<configuration>/d'  ~/hadoop/etc/hadoop/core-site.xml
sed  -i  '/^<\/configuration>/d'  ~/hadoop/etc/hadoop/core-site.xml

echo "<configuration>"  >>  ~/hadoop/etc/hadoop/core-site.xml
echo -e "\t<property>"  >>  ~/hadoop/etc/hadoop/core-site.xml
echo -e "\t\t<name>fs.defaultFS</name>"  >>  ~/hadoop/etc/hadoop/core-site.xml
echo -e "\t\t<value>hdfs://`hostname`:9000</value>"  >>  ~/hadoop/etc/hadoop/core-site.xml
echo -e "\t</property>"  >>  ~/hadoop/etc/hadoop/core-site.xml
echo "</configuration>"  >>  ~/hadoop/etc/hadoop/core-site.xml


# There is only allow 1 <configuration> in hdfs-site.xml
# So we delete old one
sed  -i  '/^<configuration>/d'  ~/hadoop/etc/hadoop/hdfs-site.xml
sed  -i  '/^<\/configuration>/d'  ~/hadoop/etc/hadoop/hdfs-site.xml

echo "<configuration>"  >>  ~/hadoop/etc/hadoop/hdfs-site.xml
echo -e "\t<property>"  >>  ~/hadoop/etc/hadoop/hdfs-site.xml
echo -e "\t\t<name>dfs.replication</name>"  >>  ~/hadoop/etc/hadoop/hdfs-site.xml
echo -e "\t\t<value>2</value>"  >>  ~/hadoop/etc/hadoop/hdfs-site.xml
echo -e "\t</property>"  >>  ~/hadoop/etc/hadoop/hdfs-site.xml
echo "</configuration>"  >>  ~/hadoop/etc/hadoop/hdfs-site.xml



# Create /etc/hosts for HDFS Cluster
# Add Master IP and HOSTNAME to /var/ftp/pub/hostsname
echo  "`ifconfig | grep broadcast | cut -d ' ' -f 10` `hostname`" | sudo  tee  /var/ftp/pub/hostsname


# Add Slave IP and HOSTNAME to /var/ftp/pub/hostsname
# Add Slave IP to ~/hadoop/etc/hadoop/slaves
# Copy Master ~/hadoop folder to Slaves

#delete localhost in ~/hadoop/etc/hadoop/slaves
sed -i '/^localhost$/d'  ~/hadoop/etc/hadoop/slaves

echo -e "\033[32m"
STOP=''
SLAVEIP=''
SLAVEHOSTNAME=''

until [ "$STOP" = "stop" ]; 
do
        echo "== Let's add Slave IP  to /var/ftp/pub/hostsname =="
        echo "== Let's add Slave HOSTNAME to /var/ftp/pub/hostsname =="
	echo ""
        echo "== Now, /var/ftp/pub/hostsname is =="
	cat /var/ftp/pub/hostsname
	echo ""
	echo -e "\033[33m"
        echo "== Please input your Slave IP, like 10.x.y.z =="
        read SLAVEIP
        echo "== Please input your Slave HOSTNAME, like slave1 =="
        read SLAVEHOSTNAME
        echo -e "\033[32m"
        echo "Your Slave IP is $SLAVEIP"
        echo "Your Slave HOSTNAME is $SLAVEHOSTNAME"
        echo "Add $SLAVEIP and $SLAVEHOSTNAME to /var/ftp/pub/hostsname"
        echo "$SLAVEIP  $SLAVEHOSTNAME"  | sudo tee -a  /var/ftp/pub/hostsname
	echo ""
        echo "Add $SLAVEIP to ~/hadoop/etc/hadoop/slaves"
        echo "$SLAVEIP"  | sudo tee -a ~/hadoop/etc/hadoop/slaves
	echo ""
	echo "Copy Master ~/hadoop folder to Slaves"
	scp  -r  ~/hadoop/  $SLAVEIP:~
	echo ""
        echo -e "\033[31m"
        echo "== If you want finish input, please input stop, if you want to add slave enter anything  =="
	read STOP
done

# Copy /var/ftp/pub/hostsname  to /etc/hosts
echo -e "\033[32m"
echo " Copy /var/ftp/pub/hostsname to /etc/hosts"
echo -e "\033[0m"
sudo cp  /var/ftp/pub/hostsname  /etc/hosts




# Setting up SSH for Hadoop Master
# 考慮合併到 CentOSparkCluster-1-MasterEnv.sh 
echo -e "\033[32m"
echo ""
echo ""
echo "==== Setting up SSH for Hadoop Master  ===="
echo ""
echo -e "\033[34m"

cat   ~/.ssh/id_dsa.pub   >>   ~/.ssh/authorized_keys
ssh-keyscan   `ifconfig | grep broadcast | cut -d ' ' -f 10`   >>   ~/.ssh/known_hosts
ssh-keyscan   0.0.0.0   >>   ~/.ssh/known_hosts






