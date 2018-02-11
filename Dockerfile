FROM debian:latest


RUN apt-get update && apt-get install traceroute
CMD ip route replace default via $(ip addr show dev eth0 | grep inet | awk '{ print $2 }' | awk -F'.' 'BEGIN{OFS="."}  { print $1, $2, $3, "254" }') ; /bin/sleep 100000
