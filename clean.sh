#!/bin/sh

for i in "$@"; do
    podman image exists "$i" && podman rmi "$i" || :
done
