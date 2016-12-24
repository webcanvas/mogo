#!/bin/bash

# echo 'Download calicoctl'
# mkdir -p tree/usr/bin
# wget -nc -O tree/usr/bin/calicoctl https://github.com/projectcalico/calico-containers/releases/download/v1.0.0/calicoctl
# chmod +x tree/usr/bin/calicoctl

echo 'Download docker volume netshare'
mkdir -p tree/usr/bin tree/tmp
wget -N -P tree/tmp https://github.com/ContainX/docker-volume-netshare/releases/download/v0.32/docker-volume-netshare_0.32_linux_amd64.tar.gz
tar xvf tree/tmp/docker-volume-netshare_0.32_linux_amd64.tar.gz -C tree/tmp
mv tree/tmp/docker-volume-netshare_0.32_linux_amd64/docker-volume-netshare tree/usr/bin
chmod +x tree/usr/bin/docker-volume-netshare
rm -rf tree/tmp/docker-volume-netshare_0.32_linux_amd64* tree/tmp

# echo 'Download convoy'
# mkdir -p tree/tmp
# wget -N -P tree/tmp https://github.com/rancher/convoy/releases/download/v0.5.0/convoy.tar.gz
# tar xvf tree/tmp/convoy.tar.gz
# cp tree/tmp/convoy/convoy tree/tmp/convoy/convoy-pdata_tools tree/usr/bin/

# cat << EOF | calicoctl create -f -
# - apiVersion: v1
#   kind: ipPool
#   metadata:
#     cidr: 192.168.64.0/24
# EOF
