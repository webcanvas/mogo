#!/bin/bash

echo 'Download calicoctl'
mkdir -p tree/usr/local/bin
sudo wget -O tree/usr/local/bin/calicoctl https://github.com/projectcalico/calico-containers/releases/download/v1.0.0/calicoctl
sudo chmod +x tree/usr/local/bin/calicoctl
# docker network create --driver calico --ipam-driver calico-ipam --subnet=192.0.2.0/24 my_net

# echo 'Download convoy'
# mkdir -p tree/tmp
# wget -N -P tree/tmp https://github.com/rancher/convoy/releases/download/v0.5.0/convoy.tar.gz
# tar xvf tree/tmp/convoy.tar.gz
# cp tree/tmp/convoy/convoy tree/tmp/convoy/convoy-pdata_tools tree/usr/bin/
