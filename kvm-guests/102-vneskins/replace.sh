#!/bin/bash
#
# requires:
#  bash
#
set -e
set -x

distro_ver=6.6
[[ -a distro_ver.conf ]] && . distro_ver.conf
box_path=../../boxes/minimal-${distro_ver}-x86_64.kvm.box

sudo /bin/bash -e <<EOS
  ../common/stop.sh

  time tar zxvf ${box_path}
  time sync

  ../common/kemumaki-init.sh
 #./run.sh
  ./pack-box.sh
EOS
