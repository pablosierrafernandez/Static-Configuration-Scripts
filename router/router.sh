#!/bin/bash
# ROUTER
ip address add 192.0.2.1/29 broadcast 192.0.2.7 dev eth0
ip address add 192.0.2.1/29 broadcast 192.0.2.7 dev eth1
ip link set eth0 up
ip link set eth1 up


echo "1" > /proc/sys/net/ipv4/ip_forward
echo -e "192.0.2.4      server" >> /etc/hosts


iptables -t nat -A POSTROUTING -s 192.0.2.04/29 -o eth0 -j MASQUERADE
iptables -t nat -A POSTROUTING -s 192.0.2.04/29 -o eth1 -j MASQUERADE
iptables -t nat -L 

echo 'root:milax' | chpasswd
ss -ltn
dpkg -s openssh-server
sed -i -e 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/g' /etc/ssh/sshd_config 

service ssh restart
ssh server
