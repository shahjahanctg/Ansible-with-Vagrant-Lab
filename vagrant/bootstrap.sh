#!/usr/bin/env bash

#echo thePassword | passwd theUsername --stdin

sudo useradd -d /home/ansible ansible
sudo echo ansible:ansible | chpasswd
sudo su - ansible
mkdir -p /home/ansible/.ssh
sudo chown -R ansible:ansible /home/ansible/.ssh
sudo echo 'ansible  ALL=(ALL:ALL) ALL' >> /etc/sudoers
ssh-keygen -b 2048 -t rsa -f /home/ansible/.ssh/id_rsa -q -N ""

sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
sudo systemctl restart sshd

sudo sed -i 's|#baseurl=http://mirror.centos.org/$contentdir/$releasever/AppStream/$basearch/os/|baseurl=http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os|g' /etc/yum.repos.d/CentOS-Linux-AppStream.repo
sudo sed -i 's|#baseurl=http://mirror.centos.org/$contentdir/$releasever/BaseOS/$basearch/os/|baseurl=http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os|g' /etc/yum.repos.d/CentOS-Linux-BaseOS.repo

sudo sed -i 's|mirrorlist=http://mirrorlist.centos.org/?release=$releasever&arch=$basearch&repo=BaseOS&infra=$infra|#mirrorlist=http://mirrorlist.centos.org/?release=$releasever&arch=$basearch&repo=BaseOS&infra=$infra|g' /etc/yum.repos.d/CentOS-Linux-AppStream.repo
sudo sed -i 's|mirrorlist=http://mirrorlist.centos.org/?release=$releasever&arch=$basearch&repo=AppStream&infra=$infra|#mirrorlist=http://mirrorlist.centos.org/?release=$releasever&arch=$basearch&repo=AppStream&infra=$infra|g' /etc/yum.repos.d/CentOS-Linux-BaseOS.repo

echo -e "192.168.10.10 web1 web1\n192.168.10.11 web2 web2\n192.168.10.12 lb lb\n192.168.10.13\n" >> /etc/hosts

sudo yum repolist
sudo yum update --allowerasing -y
