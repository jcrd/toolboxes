#!/bin/sh

[ -e cache/"$1" ] || no_cache=true

podman build ${no_cache+--no-cache} -t supplantr/"$1" -f "$2" .

mkdir -p cache
touch cache/"$1"
