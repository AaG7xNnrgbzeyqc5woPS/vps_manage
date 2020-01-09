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

# Only fro learning
# userdel user  #olny delete user
# ussedel -r user # delete user and user's home dir.

# Adduser john
useradd -m john  #create user john and he's home dir and john group ,not password
usermod -aG sudo john

#cp authorized_keys to /home/john/.ssh
mkdir /home/john/.ssh
cd ~
cp .ssh/authorized_keys /home/john/.ssh/
chown -R john:john /home/john/.ssh

