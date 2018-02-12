#!/bin/bash

ip route replace default via $(ip addr show dev eth0 | grep inet | awk '{ print $2 }' | awk -F'.' 'BEGIN{OFS="."}  { print $1, $2, $3, "254" }')


echo "IP Address is $(ip addr show dev eth0 | grep inet | awk '{ print $2 }')"
echo "Default gateway is now $(ip addr show dev eth0 | grep inet | awk '{ print $2 }' | awk -F'.' 'BEGIN{OFS="."}  { print $1, $2, $3, "254" }')"
/bin/sleep 10000000
