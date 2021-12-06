FROM ubuntu:18.04
MAINTAINER imssm99 <imssm99@gmail.com>

RUN sed -i 's@archive.ubuntu.com@mirror.kakao.com@g' /etc/apt/sources.list

RUN apt-get clean
RUN dpkg --add-architecture i386
RUN apt-get update
RUN apt-get install -y libc6:i386 libncurses5:i386 libstdc++6:i386
RUN apt-get install -y gcc gcc-multilib gdb gdb-multiarch
RUN apt-get install -y libffi-dev libssl-dev
RUN apt-get install -y wget curl
RUN apt-get install -y python3 python3-dev
RUN apt-get install -y vim git

RUN echo "root:root" | chpasswd

RUN bash -c "$(curl -fsSL http://gef.blah.cat/sh)"
RUN echo "export LC_ALL=C.UTF-8" >> ~/.bashrc

RUN export echo 'TERM=xterm-256color' >> /root/.bashrc

RUN ln -s /usr/bin/python3 /usr/bin/python
COPY .vimrc /root/.vimrc
COPY .vim /root/.vim

RUN curl https://bootstrap.pypa.io/get-pip.py | python3
RUN python3 -m pip install pwntools
RUN python3 -m pip install ropper keystone-engine
