#!/bin/bash
#
# requires:
#  bash
#
set -e
set -o pipefail

boxes="
  kemukins-6.4-x86_64.kvm.box
  vzkemukins-6.5-x86_64.kvm.box
"

for box in ${boxes}; do
  echo ... ${box}
  curl -fSkL http://dlc.wakame.axsh.jp/wakameci/kemukins-box-rhel6/current/${box} -o ${box}
done