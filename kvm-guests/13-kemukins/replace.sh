#!/bin/bash
#
# requires:
#  bash
#
set -e
set -x

ssh_target=jenkins@172.16.255.13

ssh ${ssh_target} <<EOS
  sudo shutdown -h now
EOS

sleep 20
sync

sudo $SHELL -e <<'EOS'
  timestamp=$(date +%Y%m%d.%s).$$

  time tar zxvf ../../boxes/kemukins-6.4-x86_64.kvm.box
  time sync

  ./kemukins-init.sh
  ./run.sh
EOS