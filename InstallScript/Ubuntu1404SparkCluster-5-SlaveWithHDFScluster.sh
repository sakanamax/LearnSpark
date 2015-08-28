# Setting up SSH for Slave 
echo "\033[32m"
echo ""
echo ""
echo "==== Setting up SSH for Slave  ===="
echo ""
echo "\033[34m"

ssh-keygen  -t   dsa   -P ''   -f ~/.ssh/id_dsa
cat   ~/.ssh/id_dsa.pub   >>   ~/.ssh/authorized_keys
ssh-keyscan   127.0.0.1   >>   ~/.ssh/known_hosts

# Get Master IP
echo "\033[32m"
echo ""
echo "==== Please input your Master IP Address ===="
echo "==== For example  10.x.y.z ===="
echo ""
echo "\033[34m"
read MASTERIP
echo "Your Master IP is $MASTERIP"


# Get Master /srv/ftp/hostsname and copy to /etc/hosts
echo "\033[32m"
echo ""
echo "==== Get Master /srv/ftp/hostsname and copy to /etc/hosts ===="
echo ""
echo "\033[34m"
echo "Before copy Master /srv/ftp/hostsname, your /etc/hosts is"
echo ""
cat  /etc/hosts

echo "\033[32m"
echo "Add the Master /srv/ftp/hostsname to /etc/hosts"
curl  ftp://$MASTERIP/hostsname  | sudo tee /etc/hosts
echo ""
echo "\033[31m"
echo "After copy Master /srv/ftp/hostsname, your /etc/hosts is"
cat  /etc/hosts
echo ""
echo "-- Please make sure your Master /etc/hosts is the same with Slave --"
echo ""

