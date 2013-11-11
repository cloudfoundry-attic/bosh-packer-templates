#!/bin/bash -eux

perl -pi.orig -e   'next if /-backports/; s/^# (deb .* multiverse)$/$1/'   /etc/apt/sources.list

apt-get -y update
apt-get -y upgrade
apt-get -y install curl
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
