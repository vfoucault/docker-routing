FROM debian:latest


RUN apt-get update && apt-get install traceroute
COPY ./scripts/gateway.sh /gateway.sh
CMD /gateway.sh
