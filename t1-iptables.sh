#!/bin/bash
iptables -I INPUT 1 -p tcp --dport 443  -s 192.168.112.0/24 -j ACCEPT
iptables -I INPUT 2 -p tcp -m multiport --dport 80,443 -j DROP