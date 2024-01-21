#!/bin/bash

# Get the IP address of the host Windows
host_ip=$(ip route | awk '/default/ { print $3 }')

# Set environment variables for the proxy
export http_proxy="http://${host_ip}:7890"
export https_proxy="http://${host_ip}:7890"
export ALL_PROXY="http://${host_ip}:7890"