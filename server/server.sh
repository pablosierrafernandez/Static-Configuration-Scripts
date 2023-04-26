#!/bin/bash
#SERVER
echo -e "auto lo\niface lo inet loopback\nauto eth0\niface eth0 inet static\naddress 192.0.2.04\nnetwork 192.0.2.0\nnetmask 255.255.255.248\nbroadcast 192.0.2.7" > /etc/network/interfaces

/etc/init.d/networking restart
echo "192.0.2.1        router" >> /etc/hosts

ss -ltn
dpkg -s openssh-server

sed -i -e 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/g' /etc/ssh/sshd_config 

service ssh restart

ssh router
