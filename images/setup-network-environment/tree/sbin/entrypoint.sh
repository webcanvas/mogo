#!/bin/bash
set -e

create_dir() {
  mkdir -p ${SNE_DIR}
}

create_dir

setup-network-environment -o ${SNE_DIR}/network-environment

cat ${SNE_DIR}/network-environment
