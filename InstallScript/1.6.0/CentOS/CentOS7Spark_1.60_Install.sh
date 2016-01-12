#!/bin/bash

###############################################
# change log 20150714 - Add sbt install
# change log 20160106 - fix to Spark 1.6.0
#
###############################################

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
echo -e "\033[33m"
sudo yum install wget -y


# Install scala
echo -e "\033[32m"
echo ""
echo "==== Start install scala 2.10.1 ===="
echo ""
echo -e "\033[0m"
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
echo -e "\033[33m"
# wget    http://www.gtlib.gatech.edu/pub/apache/spark/spark-1.4.0/spark-1.4.0-bin-hadoop2.6.tgz
# 
# wget http://archive.apache.org/dist/spark/spark-1.4.0/spark-1.4.0-bin-hadoop2.6.tgz
#
wget http://www.us.apache.org/dist/spark/spark-1.6.0/spark-1.6.0-bin-hadoop2.6.tgz
# 
#tar   zxvf   spark-1.4.0-bin-hadoop2.6.tgz
tar   zxvf   spark-*.tgz
mv  ~/spark*/  ~/spark/

# Show scala package
echo -e "\033[32m"
echo ""
echo "==== Display scala information ===="
echo ""
echo -e "\033[34m"
/usr/lib/scala-2.10.1/bin/scala -version

# Testing jps
echo -e "\033[32m"
echo ""
echo "==== Testing jps command ===="
echo ""
echo -e "\033[0m"
jps

#
echo -e "\033[32m"
echo ""
echo "==== You can change your directory to spark folder and run spark-shell now ===="
echo "cd spark*"
echo "bin/spark-shell"
echo ""
echo "==== Your SparkUI will be port :4040, just open your browser, test localhost:4040 in URL"
echo ""
echo -e "\033[0m"




