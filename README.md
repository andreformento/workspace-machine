# workspace-machine
My local machine everywhere (using just Docker)

### Run and attach

The order is -> `host:container`

```
docker run \
       -it -P \
       -v $(pwd):/home \
       -e USERID=$UID \
       ubuntu /bin/bash
```
