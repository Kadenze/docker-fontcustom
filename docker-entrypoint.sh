#!/bin/bash

set -e

#
# START
#
if [ "$1" = 'fontcustom' ]
then
    exec "$@"
else
    echo ">> DOCKER-ENTRYPOINT: NO OTHER COMMAND ALLOWED. EXIT!"
    exit 1
fi