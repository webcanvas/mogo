#!/usr/bin/env bash
#
# Copyright 2010-2016 Chris Kolenko <chris@webcanvas.com.au>

# build all docker images !!.
function build_images() {
  local organisation=$1
  local input_directory=$2

  for d in `find $input_directory/* -type d`
  do
    local name=$(basename $d)
    local version=$(cat $d/VERSION)
    local docker_tag=$organisation/$name:$version
    echo "Building $docker_tag"
    docker build -t $docker_tag $d
  done
}

build_images "webcanvas" "images"
