# workspace-machine
My local machine everywhere (using just Docker)

### Tools

#### Installed

- git
- vim

#### Future
- Java 9
- Clojure


### Docker

#### Build image

```bash
./build.sh
```

#### Run and attach the container

```bash
./start.sh
```

### How to use

After run `./build.sh` and `./start.sh`, inside the docker, run:

```bash
ssh-keygen -t rsa -b 4096 -C "andreformento.sc@gmail.com"
```
