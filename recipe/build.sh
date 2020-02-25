#!/usr/bin/env bash
set -ex

if [[ "$(uname)" == 'Linux' ]]; then
  rm -f tests/scripts/functions/wildcard
fi

./configure --prefix=$PREFIX
# bootstrap building make without make
bash build.sh
# make
./make check
./make install
