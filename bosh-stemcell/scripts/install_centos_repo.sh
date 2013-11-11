#!/bin/bash

set -e

URL_CENTOS_BASE_MIRROR_TAR=https://s3.amazonaws.com/bosh-centos-6.4-mirror/CentOS-6.4-base.tgz
URL_CENTOS_UPDATE_MIRROR_TAR=https://s3.amazonaws.com/bosh-centos-6.4-mirror/CentOS-6.4-updates.tgz
URL_CENTOS_EPEL_MIRROR_TAR=https://s3.amazonaws.com/bosh-centos-6.4-mirror/CentOS-6-EPEL-2013-11-05.tbz

mkdir -p /centosmirror
for i in ${URL_CENTOS_BASE_MIRROR_TAR} ${URL_CENTOS_UPDATE_MIRROR_TAR} ${URL_CENTOS_EPEL_MIRROR_TAR} ; do
  cd /tmp
  wget $i
  tar -C /centosmirror -xvf $(basename $i)
  rm -v $(basename $i)
done
