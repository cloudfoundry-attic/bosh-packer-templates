# stemcell image creation
apt-get -y install debootstrap kpartx

# stemcell uploading
apt-get -y install s3cmd

# native gem compilation
apt-get -y install g++ git-core make

# native gem dependencies
apt-get -y install libmysqlclient-dev libpq-dev libsqlite3-dev libxml2-dev libxslt-dev

# vSphere requirements
apt-get -y install open-vm-dkms

# OpenStack requirement
apt-get -y install qemu-utils

# CentOS building requirements
apt-get -y install yum