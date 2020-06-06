#!/bin/bash

P="$(dirname "$(readlink -f "$0")")"

set -e
set -u
set -x

cd "$P"

if ! test -e 'EasyEDA-Router.7z'; then
	wget 'https://image.easyeda.com/files/EasyEDA-Router-latest.7z' -O 'EasyEDA-Router.7z'
fi

docker build --pull . -t easyeda-autorouter
