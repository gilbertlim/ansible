#!/bin/bash

export DEBIAN_FRONTEND=noninteractive
export TZ=Asia/Seoul

rm /var/lib/apt/lists/lock
rm /var/cache/apt/archives/lock
rm /var/lib/dpkg/lock
dpkg --configure -a

apt update
apt install -y vim tzdata openssh-server ansible

ln -snf /usr/share/zoneinfo/$TZ /etc/localtime
echo "root:root" | chpasswd

sed -i 's/#Port 22/Port 22/g' /etc/ssh/sshd_config
sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin no/g' /etc/ssh/sshd_config
service ssh start