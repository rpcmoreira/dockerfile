FROM ubuntu:20.04

ENV TZ=Europe/Lisbon
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt update && apt install -y nmap ssh tcpdump iperf3 netcat net-tools traceroute iproute2 iputils-arping iputils-ping iputils-tracepath inetutils-telnet telnet-ssl telnet lynx python3
