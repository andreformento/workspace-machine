#!/bin/sh

# The order is -> `host:container`

docker run \
       -it \
       -v $(pwd)/ws:/home/ws \
       -e USERID=$UID \
       andreformento/workspace-machine /bin/bash
