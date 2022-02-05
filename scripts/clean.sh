#!/bin/sh

for i in "$@"; do
    podman image exists "$i" && toolbox rmi -f "$i" || :
    [ -e cache/"$i" ] && rm cache/"$i" || :
done
