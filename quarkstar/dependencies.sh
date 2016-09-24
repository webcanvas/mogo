#!/bin/bash

echo 'Download calicoctl'
mkdir -p tree/usr/bin
wget -N -P tree/usr/bin http://www.projectcalico.org/builds/calicoctl
chmod +x tree/usr/bin/calicoctl

echo 'Download convoy'
mkdir -p tree/tmp
wget -N -P tree/tmp https://github.com/rancher/convoy/releases/download/v0.5.0/convoy.tar.gz
tar xvf tree/tmp/convoy.tar.gz
cp tree/tmp/convoy/convoy tree/tmp/convoy/convoy-pdata_tools tree/usr/bin/
