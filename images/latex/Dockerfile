FROM ubuntu:xenial
MAINTAINER Chris Kolenko <chris@webcanvas.com.au>

ENV DEBIAN_FRONTEND noninteractive
ENV TERM xterm
ENV LANG en_AU.UTF-8

RUN locale-gen $LANG

RUN apt-get update -q
RUN apt-get install -qy \
  texlive-full \
  python-pygments \
  python-yaml \
  gnuplot \
  rm -rf /var/lib/apt/lists/*

RUN pip install tex
RUN easy_install cheetah

WORKDIR /data
VOLUME ["/data"]
