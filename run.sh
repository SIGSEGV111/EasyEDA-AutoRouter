#!/bin/bash
set -x
exec docker run --net=host --rm -d easyeda-autorouter
