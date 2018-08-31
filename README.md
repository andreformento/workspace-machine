# workspace-machine
My local machine everywhere (using just Docker)

### Tools

#### Installed

- git
- vim
- haskell
- node 8
- java 10
- clojure

### How to use

You have 2 options:

#### Run an have fun
You can just run `./start.sh` at host and, inside the docker, run:

```bash
ssh-keygen -t rsa -b 4096 -C "andreformento.sc@gmail.com" -f /root/.ssh/id_rsa -q -P ""
cat /root/.ssh/id_rsa.pub
```

And go to the [Github](https://github.com/settings/keys) and add a new key.

#### Build your own image:
You can build and run an image with `docker-compose up --build`.
It is optional because if you do not build you will use a ready image hosted
at [dockerhub](https://hub.docker.com/r/andreformento/workspace-machine).

### References

- [Split Terminal Windows Easily](https://lukaszwrobel.pl/blog/tmux-tutorial-split-terminal-windows-easily/)
- [Vim and Tmux on your Mac](http://fideloper.com/mac-vim-tmux)
