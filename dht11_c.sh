#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
dir=$(dirname $(readlink -f $DIR/$(basename "$0")))
cd $dir

sudo ./dht11_read | head -n 1 | awk '{print $1}'
