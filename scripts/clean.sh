#!/bin/sh

source scripts/lib.sh

cleaner() {
    podman image exists "$1" && toolbox rmi -f "$1" || :
    [ -e cache/"$1" ] && rm cache/"$1" || :
}

if ! [ -z $2 ]; then
    cleaner $(name_and_file $2)
    exit
fi

cleaner toolbox

for f in $1/Dockerfile.*; do
    cleaner $(name_and_file $f)
done
