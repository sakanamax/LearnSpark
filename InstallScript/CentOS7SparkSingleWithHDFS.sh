#!/bin/bash

############################################################
# change log 20150714 - Add sbt install
# change log 20150730 - Add Hadoop HDFS with single machine
#
############################################################

# Update source
#echo -e "\033[32m"
#echo ""
#echo "==== Start update ===="
#echo ""
#echo -e "\033[33m"
#apt-get   update


# Install sbt package
echo -e "\033[32m"
echo ""
echo "==== Install sbt package and repo===="
echo ""
echo -e "\033[33m"
curl   https://bintray.com/sbt/rpm/rpm  >   bintray-sbt-rpm.repo
sudo  mv  bintray-sbt-rpm.repo   /etc/yum.repos.d/
sudo  yum  install   sbt   -y


# Install java with open jdk
echo -e "\033[32m"
echo ""
echo "==== Start install openjdk ===="
echo ""
echo -e "\033[34m"
sudo yum install -y java-1.7.0-openjdk-devel

# Install wget
echo -e "\033[32m"
echo ""
echo "==== Start install wget ===="
echo ""
echo -e "\033[0m"
sudo yum install wget -y


# Install scala
echo -e "\033[32m"
echo ""
echo "==== Start install scala 2.10.1 ===="
echo ""
echo -e "\033[33m"
wget http://www.scala-lang.org/files/archive/scala-2.10.1.tgz
tar xvf scala-2.10.1.tgz
sudo mv scala-2.10.1 /usr/lib
sudo ln -s /usr/lib/scala-2.10.1/  /usr/lib/scala
export PATH=$PATH:/usr/lib/scala/bin
echo 'export PATH=$PATH:/usr/lib/scala/bin' >>  ~/.bashrc
source ~/.bashrc

# Download spark with pre-build hadoop
echo -e "\033[32m"
echo ""
echo ""
echo "==== Start install Spark with pre-build hadoop  ===="
echo ""
echo -e "\033[34m"
wget    http://www.gtlib.gatech.edu/pub/apache/spark/spark-1.4.0/spark-1.4.0-bin-hadoop2.6.tgz

# 
#tar   zxvf   spark-1.4.0-bin-hadoop2.6.tgz
tar   zxvf   spark-*.tgz
mv  ~/spark*/  ~/spark/


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


# Setting up Hadoop 
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
echo -e "\t\t<value>hdfs://localhost:9000</value>"  >>  ~/hadoop/etc/hadoop/core-site.xml
echo -e "\t</property>"  >>  ~/hadoop/etc/hadoop/core-site.xml
echo "</configuration>"  >>  ~/hadoop/etc/hadoop/core-site.xml


# There is only allow 1 <configuration> in hdfs-site.xml
# So we delete old one
sed  -i  '/^<configuration>/d'  ~/hadoop/etc/hadoop/hdfs-site.xml
sed  -i  '/^<\/configuration>/d'  ~/hadoop/etc/hadoop/hdfs-site.xml

echo "<configuration>"  >>  ~/hadoop/etc/hadoop/hdfs-site.xml
echo -e "\t<property>"  >>  ~/hadoop/etc/hadoop/hdfs-site.xml
echo -e "\t\t<name>dfs.replication</name>"  >>  ~/hadoop/etc/hadoop/hdfs-site.xml
echo -e "\t\t<value>1</value>"  >>  ~/hadoop/etc/hadoop/hdfs-site.xml
echo -e "\t</property>"  >>  ~/hadoop/etc/hadoop/hdfs-site.xml
echo "</configuration>"  >>  ~/hadoop/etc/hadoop/hdfs-site.xml


# Setting up SSH for localhost 
echo -e "\033[32m"
echo ""
echo ""
echo "==== Setting up SSH for localhost  ===="
echo ""
echo -e "\033[34m"

ssh-keygen  -t   dsa   -P ''   -f ~/.ssh/id_dsa
cat   ~/.ssh/id_dsa.pub   >>   ~/.ssh/authorized_keys
ssh-keyscan   localhost   >>   ~/.ssh/known_hosts
ssh-keyscan   0.0.0.0   >>   ~/.ssh/known_hosts


# Format HDFS and start HDFS
echo -e "\033[32m"
echo ""
echo ""
echo "==== Format and start HDFS  ===="
echo ""
echo -e "\033[0m"

~/hadoop/bin/hdfs   namenode   -format
~/hadoop/sbin/start-dfs.sh


# Show scala package
echo -e "\033[32m"
echo ""
echo "==== Display scala information ===="
echo ""
echo -e "\033[33m"
/usr/lib/scala-2.10.1/bin/scala -version

# Testing jps
echo -e "\033[32m"
echo ""
echo "==== Testing jps command ===="
echo ""
echo -e "\033[4m"
jps

#
echo -e "\033[32m"
echo ""
echo "==== You can change your directory to spark folder and run spark-shell now ===="
echo "cd spark*"
echo "bin/spark-shell"
echo ""
echo "==== Your SparkUI will be port :4040, just open your browser, test localhost:4040 in URL"
echo "==== Your HDFS UI will be port :50070, just open your browser, test localhost:50070 in URL"
echo ""
echo -e "\033[0m"




