# usage:
# longin in root 
# create_user_ubuntu.sh
# 参数:
# $1 = username
# usage:
#   wget https://raw.githubusercontent.com/AaG7xNnrgbzeyqc5woPS/vps_manage/master/create_user_ubuntu.sh
#   chmod +x create_user_ubuntu.sh
#   ./create_user_ubuntu.sh newuser
#   passwd
#------------------------

# upgrade package
echo -------------------------------------
echo  now upgrade package
echo
echo

apt-get update
apt-get -y upgrade
apt-get -y dist-upgrade
apt-get clean
apt-get automove
#apt-get -y upgrade

# Only fro learning
# userdel user  #olny delete user
# userdel -r user # delete user and user's home dir.


username=$1 
user_ssh_dir="/home/${username}/.ssh/"
# Adduser john
useradd -m --shell /bin/bash ${username}  #create user john and he's home dir and john group ,not password
usermod -aG sudo ${username}

#cp authorized_keys to /home/john/.ssh
mkdir ${user_ssh_dir}
cd ~
cp .ssh/authorized_keys ${user_ssh_dir}
chown -R ${username}:${username} ${user_ssh_dir}

echo "Create User : ${username} OK!"
echo "Please setup password for new user with command 'passwd user'! "
echo "passwd ${username}"

