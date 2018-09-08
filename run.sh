#!/bin/bash

P="$(dirname "$(readlink -f "$0")")"

set -x

cd "$P"
./build.sh

exec docker run --name=easyeda-autorouter --net=host --rm -d easyeda-autorouter
