# Setting up SSH for Slave 
echo -e "\033[32m"
echo ""
echo ""
echo "==== Setting up SSH for Slave  ===="
echo ""
echo -e "\033[34m"

ssh-keygen  -t   dsa   -P ''   -f ~/.ssh/id_dsa
cat   ~/.ssh/id_dsa.pub   >>   ~/.ssh/authorized_keys
ssh-keyscan   127.0.0.1   >>   ~/.ssh/known_hosts

# Get Master IP
echo -e "\033[32m"
echo ""
echo "==== Please input your Master IP Address ===="
echo "==== For example  10.x.y.z ===="
echo ""
echo -e "\033[34m"
read MASTERIP
echo "Your Master IP is $MASTERIP"


# Get Master /var/ftp/pub/hostsname and copy to /etc/hosts
echo -e "\033[32m"
echo ""
echo "==== Get Master /var/ftp/pub/hostsname and copy to /etc/hosts ===="
echo ""
echo -e "\033[34m"
echo "Before copy Master /var/ftp/pub/hostsname, your /etc/hosts is"
echo ""
cat  /etc/hosts

echo -e "\033[32m"
echo "Add the Master /var/ftp/pub/hostsname to /etc/hosts"
curl  ftp://$MASTERIP/pub/hostsname  | sudo tee /etc/hosts
echo ""
echo -e "\033[31m"
echo "After copy Master /var/ftp/pub/hostsname, your /etc/hosts is"
cat  /etc/hosts
echo ""
echo "-- Please make sure your Master /etc/hosts is the same with Slave --"
echo ""

