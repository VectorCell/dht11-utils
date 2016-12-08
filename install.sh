#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
dir=$(dirname $(readlink -f $DIR/$(basename "$0")))

cd ~/bin

echo ln -s "$dir/dht11_read" dht11_read
ln -s "$dir/dht11_read" dht11_read

for t in {c,f,h}; do
	echo ln -s "$dir/dht11_$t.sh" dht11_$t
	ln -s "$dir/dht11_$t.sh" dht11_$t
done
