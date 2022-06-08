#!/bin/sh

podman pull $(cat $1 | awk 'NR==1 {print $2}')
