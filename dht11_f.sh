#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
dir=$(dirname $(readlink -f $DIR/$(basename "$0")))
cd $dir

./dht11_read | head -n 1 | tr -d '(' | awk '{print $3}'
