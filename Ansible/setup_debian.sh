#!/bin/bash

useradd -m -s /bin/bash ansible

echo "ansible:123456" | chpasswd

apt-get update && apt-get install -y sudo

usermod -aG sudo ansible

apt-get install -y openssh-server

echo "ansible ALL=(ALL:ALL) NOPASSWD: ALL" >> /etc/sudoers.d/ansible

chmod 0440 /etc/sudoers.d/ansible

systemctl enable ssh
systemctl start ssh