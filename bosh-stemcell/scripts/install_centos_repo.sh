#!/bin/bash

set -e
URL_CENTOS_BASE_MIRROR_TAR=https://s3.amazonaws.com/bosh-centos-6.4-mirror/Fake-CentOS-6.4-base-and-updates-2013-11-01.tbz
CENTOS_BASE_MIRROR_TAR=$(basename ${URL_CENTOS_BASE_MIRROR_TAR})

# download (or look for a cached version) our custom build mirror.
# FQP for repos should be: /usr/local/mirror/centos/6.4/base/x86_64/Packages/
cd /tmp && {
  wget ${URL_CENTOS_BASE_MIRROR_TAR} && {
    mkdir -p /usr/local/mirror && {
      tar -C /usr/local/mirror -xvf /tmp/${CENTOS_BASE_MIRROR_TAR}
    }
  }
}
