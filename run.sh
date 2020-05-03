#!/bin/bash

P="$(dirname "$(readlink -f "$0")")"

set -x

cd "$P"
./build.sh

docker kill easyeda-autorouter && sleep 1
docker rm   easyeda-autorouter && sleep 1

exec docker run --name=easyeda-autorouter --net=host --rm -d easyeda-autorouter
