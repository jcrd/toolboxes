#!/bin/sh

source scripts/lib.sh

builder() {
    if [ -e cache/"$1" ]; then
        echo "Reusing '$1' cache..."
    else
        no_cache=true
    fi

    podman build ${no_cache+--no-cache} -t supplantr/"$1" -f "$2" .

    mkdir -p cache
    touch cache/"$1"
}

if ! [ -z $2 ]; then
    builder $(name_and_file $2)
    exit
fi

builder toolbox Dockerfile

for f in $1/Dockerfile.*; do
    builder $(name_and_file $f)
done
