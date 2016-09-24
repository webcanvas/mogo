FROM ubuntu:xenial
MAINTAINER Chris Kolenko <chris@webcanvas.com.au>

ENV DEBIAN_FRONTEND noninteractive
ENV TERM xterm
ENV LANG en_AU.UTF-8
ENV VFS_PATH /mnt/external
ENV PATH /usr/local/bin:$PATH

RUN locale-gen $LANG

RUN apt-get update -q
RUN apt-get install -qy \
  zip \
  wget && \
  rm -rf /var/lib/apt/lists/*

RUN wget https://github.com/rancher/convoy/releases/download/v0.5.0/convoy.tar.gz && \
  tar xvf convoy.tar.gz && \
  cp convoy/convoy convoy/convoy-pdata_tools /usr/local/bin/ && \
  rm -rf convoy

RUN mkdir -p /etc/docker/plugins/ && \
  echo "unix:///var/run/docker/plugins/convoy.sock" > /etc/docker/plugins/convoy.spec

WORKDIR "/usr/local/bin"
CMD ["convoy daemon --drivers vfs --driver-opts vfs.path=${VFS_PATH}"]
