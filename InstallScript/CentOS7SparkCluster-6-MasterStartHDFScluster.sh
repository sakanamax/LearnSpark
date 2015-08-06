# Format HDFS and start HDFS
echo -e "\033[32m"
echo ""
echo ""
echo "==== Format and start HDFS  ===="
echo ""
echo -e "\033[0m"

~/hadoop/bin/hdfs   namenode   -format
~/hadoop/sbin/start-dfs.sh



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
echo "==== Your SparkClusterUI will be port :8080, just open your browser, test MasterIP:8080 in URL"
echo "==== Your SparkUI will be port :4040, just open your browser, test MasterIP:4040 in URL"
echo "==== Your HDFS UI will be port :50070, just open your browser, test MasterIP:50070 in URL"
echo ""
echo -e "\033[0m"

