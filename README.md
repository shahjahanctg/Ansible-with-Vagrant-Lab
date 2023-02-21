# RHCE 8 Ansible Practice with Vagrrant Lab Setup

# Install Ansible in Ubuntu

```bash

  sudo apt update
  sudo apt upgrade -y
  sudo reboot
  sudo apt install -y software-properties-common
  sudo add-apt-repository --yes --update ppa:ansible/ansible
  sudo apt update
  sudo apt install -y ansible
  ansible --version

```
# Install Vagrant in Ubuntu

``` bash

  sudo apt-get install vagrant
  sudo apt-get install libvirt0
  sudo apt-get install libvirt-daemon-system
  sudo systemctl enable libvirtd.service
  sudo systemctl start libvirtd.service

```
