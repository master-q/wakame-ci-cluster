#!/bin/bash
#
# requires:
#  bash
#
set -e
set -o pipefail

chroot_dir=${1}

chroot $1 /bin/bash -ex <<'EOS'
  yum install --disablerepo=updates -y qemu-kvm qemu-img
EOS
