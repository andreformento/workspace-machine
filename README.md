# workspace-machine
My local machine everywhere (using just Docker)

### Tools

#### Installed

- git
- vim
- haskell
- node 8

### How to use

#### Build your own image _(optional)_:
You can build an image with `docker-compose build`.
It is optional because if you do not build you will use a ready image hosted
at [dockerhub](https://hub.docker.com/r/andreformento/workspace-machine).

#### Run an have fun
You can just run `./start.sh` at host and, inside the docker, run:

```bash
ssh-keygen -t rsa -b 4096 -C "andreformento.sc@gmail.com" -f /root/.ssh/id_rsa -q -P ""
cat /root/.ssh/id_rsa.pub
```

And go to the [Github](https://github.com/settings/keys) and add a new key.

### References
- http://fideloper.com/mac-vim-tmux
