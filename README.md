# workspace-machine
My local machine everywhere (using just Docker)

### Instaled tools
- git
- vim

### Build

```
docker build -t andreformento/workspace-machine .
```

### Run and attach

The order is -> `host:container`

```
docker run \
       -it -P \
       -v $(pwd):/home \
       -e USERID=$UID \
       andreformento/workspace-machine /bin/bash
```
