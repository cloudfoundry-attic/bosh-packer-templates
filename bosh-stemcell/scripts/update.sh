#!/bin/bash -eux

apt-get -y update
apt-get -y upgrade
apt-get -y install curl

# Hack to get git installed more reliably on AWS
apt-get -y update --fix-missing
apt-get -y install git

# ensure the correct kernel headers are installed
apt-get -y install linux-headers-$(uname -r)

# update package index on boot
cat <<EOF > /etc/init/refresh-apt.conf
description "update package index"
start on networking
task
exec /usr/bin/apt-get update
EOF
