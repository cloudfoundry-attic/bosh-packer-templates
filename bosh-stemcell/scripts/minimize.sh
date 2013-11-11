#!/bin/bash -eux

# This is to fill all unused space with 0s, in order to
# optimize compression after the image is created

dd if=/dev/zero of=/EMPTY bs=1M
rm -f /EMPTY
