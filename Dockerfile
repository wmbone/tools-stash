FROM alpine
Label maintainer="Raymond Chiu"
Label version="1.0"
Label description="This is container with tools"

# reference to praqma/network-multitool
# https://github.com/Praqma/Network-MultiTool
RUN apk update \
    && apk add bash bind-tools busybox-extras curl ethtool git \
    iperf3 iproute2 iputils jq lftp mtr \
    netcat-openbsd net-tools nmap openssh-client openssl \
	perl-net-telnet procps rsync socat tcpdump tshark wget \
    && mkdir /certs \
    && chmod 700 /certs 
    
COPY docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]
