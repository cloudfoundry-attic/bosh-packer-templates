#!/bin/bash -eux

if [ -f /home/ubuntu/.vbox_version ]; then
    mkdir /tmp/vbox
    VER=$(cat /home/ubuntu/.vbox_version)
    mount -o loop VBoxGuestAdditions_$VER.iso /tmp/vbox
    sh /tmp/vbox/VBoxLinuxAdditions.run
    umount /tmp/vbox
    rmdir /tmp/vbox
    rm *.iso
fi

mkdir /home/ubuntu/.ssh
wget --no-check-certificate \
    'https://github.com/mitchellh/vagrant/raw/master/keys/vagrant.pub' \
    -O /home/ubuntu/.ssh/authorized_keys
chown -R ubuntu /home/ubuntu/.ssh
chmod -R go-rwsx /home/ubuntu/.ssh
