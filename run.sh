#!/bin/bash
set -x
exec docker run --name=easyeda-autorouter --net=host --rm -d easyeda-autorouter
