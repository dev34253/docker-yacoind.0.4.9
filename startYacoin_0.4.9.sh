#!/bin/bash

cd /yacoin

if [ ! -f /yacoin/data/blk0001.dat ]; then
  echo "Copying bootstrap data"
  cp -r /tmp/data/* /yacoin/data/
fi

echo "Starting YACoin"
./yacoind -datadir=/yacoin/data/ -conf=/yacoin/data/yacoin.conf

