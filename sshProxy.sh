#!/bin/bash

# Get the IP address of the host Windows
host_ip=$(ip route | awk '/default/ { print $3 }')

echo "" > ~/.ssh/config
echo "Host *" > ~/.ssh/config
echo "  ProxyCommand nc -X connect -x ${host_ip}:7890 %h %p" >> ~/.ssh/config