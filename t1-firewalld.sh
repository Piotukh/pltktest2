#!/bin/bash
systemctl start firewalld
firewall-cmd --permanent --add-rich-rule 'rule family="ipv4" source address="192.168.112.0/24" port port=443 protocol=tcp accept' > /dev/null 2>&1
firewall-cmd --permanent --remove-port=80/tcp > /dev/null 2>&1
firewall-cmd --permanent --remove-service=http > /dev/null 2>&1
firewall-cmd --permanent --remove-port=443/tcp  > /dev/null 2>&1
firewall-cmd --permanent --remove-service=https > /dev/null 2>&1
firewall-cmd --reload > /dev/null 2>&1
echo "Rules applied"
