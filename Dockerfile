FROM resin/rpi-raspbian:latest

RUN DEBIAN_FRONTEND=noninteractive ;\
apt-get update -qq && \
apt-get install -y nfs-common inotify-tools -qq && \
rm -rf /var/lib/apt/lists/* 

ADD nfs-client.sh /usr/local/bin/nfs-client

ENV NFS_PORT 2049

ENTRYPOINT ["/usr/local/bin/nfs-client"]
