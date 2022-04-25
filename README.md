# Docker-Pwn-Ubuntu

## Usage

.zshrc
```bash
function dockerpwn {
    docker-compose -f ~/docker-pwn-ubuntu/docker-compose.yml $*
}

u20() {
    if ! dockerpwn ps | grep -q ubuntu2004; then
        dockerpwn up -d ubuntu2004
    fi
    docker exec -it --workdir=$PWD ubuntu2004 /bin/bash
}

u18() {
    if ! dockerpwn ps | grep -q ubuntu1804; then
        dockerpwn up -d ubuntu1804
    fi
    docker exec -it --workdir=$PWD ubuntu1804 /bin/bash
}

u16() {
    if ! dockerpwn ps | grep -q ubuntu1604; then
        dockerpwn up -d ubuntu1604
    fi
    docker exec -it --workdir=$PWD ubuntu1604 /bin/bash
}
```
