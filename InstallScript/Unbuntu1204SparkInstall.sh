#!/bin/bash

# Update source
echo "\033[32m"
echo ""
echo "==== Start update ===="
echo ""
echo "\033[33m"
apt-get   update
# Install java with open jdk
echo "\033[32m"
echo ""
echo "==== Start install openjdk ===="
echo ""
echo "\033[34m"
apt-get -y  install  openjdk-7-jdk
# Install scala
echo "\033[32m"
echo ""
echo "==== Start install scala ===="
echo ""
echo "\033[0m"
apt-get -y  install  scala

# Download spark with pre-build hadoop
echo "\033[32m"
echo ""
echo ""
echo "==== Start install Spark with pre-build hadoop  ===="
echo ""
echo "\033[33m"
wget    http://www.gtlib.gatech.edu/pub/apache/spark/spark-1.4.0/spark-1.4.0-bin-hadoop2.6.tgz

# 
#tar   zxvf   spark-1.4.0-bin-hadoop2.6.tgz
tar   zxvf   spark-*.tgz

# Show scala package
echo "\033[32m"
echo ""
echo "==== Display scala information ===="
echo ""
echo "\033[34m"
apt-cache   showpkg   scala

# Testing jps
echo "\033[32m"
echo ""
echo "==== Testing jps command ===="
echo ""
echo "\033[0m"
jps

#
echo "\033[32m"
echo ""
echo "==== You can change your directory to spark folder and run spark-shell now ===="
echo "cd spark*"
echo "bin/spark-shell"
echo ""
echo "==== Your SparkUI will be port :4040, just open your browser, test localhost:4040 in URL"
echo ""
echo "\033[0m"




