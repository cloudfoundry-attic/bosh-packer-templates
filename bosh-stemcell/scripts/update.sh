#!/bin/bash -eux

# install ec2 stuff for AMIs, harmless for virtualbox and vmware
apt-get -y install ec2-api-tools ec2-ami-tools

apt-get -y update
apt-get -y upgrade

# ensure the correct kernel headers are installed
apt-get -y install linux-headers-$(uname -r)

# update package index on boot
cat <<EOF > /etc/init/refresh-apt.conf
description "update package index"
start on networking
task
exec /usr/bin/apt-get update
EOF
