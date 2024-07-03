#!/bin/bash

apt-get install -y adduser

su -

adduser --disabled-password --gecos "" ansible

echo "Пользователь ansible создан и пароль установлен."

echo -e "123456\n123456" | passwd ansible
usermod -aG sudo ansible

apt-get install -y openssh-server

echo "ansible ALL=(ALL:ALL) NOPASSWD: ALL" >> /etc/sudoers.d/ansible

chmod 0440 /etc/sudoers.d/ansible

systemctl enable ssh
systemctl start ssh