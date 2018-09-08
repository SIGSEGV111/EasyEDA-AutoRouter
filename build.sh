#!/bin/bash

P="$(dirname "$(readlink -f "$0")")"

set -e
set -u
set -x

cd "$P"

docker pull debian:9
docker build . -t easyeda-autorouter
