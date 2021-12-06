#!/bin/sh
NAME="ubuntu1804"
docker kill $NAME
docker rm $NAME
docker build --tag $NAME:1.0 ./

PORT=
#PORT="-p 2222:22"

SHARED=
OPTION=" --rm -v /home/imssm99/wargame/:/wargame/ --cap-add=sys_ptrace --ulimit core=-1 --security-opt seccomp=unconfined "
docker run -idt --name $NAME -h $NAME $OPTION $PORT $SHARED $NAME:1.0 /bin/bash
