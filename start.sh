#!/bin/sh

# The order is -> `host:container`

docker run \
       -it \
       -v $(pwd)/ws:/root/ws \
       -v $(pwd)/ssh:/root/.ssh \
       -e USERID=$UID \
       andreformento/workspace-machine /bin/zsh
