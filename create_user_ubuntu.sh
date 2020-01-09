# usage:
# longin in root 
# create_user_ubuntu.sh

# upgrade package
echo -------------------------------------
echo  now upgrade package
echo
echo

apt-get update
apt-get -y upgrade
apt-get -y dist-upgrade
apt-get clean
apt-get -y automove
apt-get -y upgrade

# Adduser john
useradd 
groupmod -aG sudo john
