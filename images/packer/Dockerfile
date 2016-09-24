FROM ubuntu:xenial
MAINTAINER Chris Kolenko <chris@webcanvas.com.au>

ENV DEBIAN_FRONTEND noninteractive
ENV TERM xterm
ENV LANG en_AU.UTF-8

ENV PACKER_VERSION=0.10.1
ENV PACKER_SHA256SUM=7d51fc5db19d02bbf32278a8116830fae33a3f9bd4440a58d23ad7c863e92e28

RUN locale-gen $LANG

ADD https://releases.hashicorp.com/packer/${PACKER_VERSION}/packer_${PACKER_VERSION}_linux_amd64.zip ./
ADD https://releases.hashicorp.com/packer/${PACKER_VERSION}/packer_${PACKER_VERSION}_SHA256SUMS ./

# RUN apk add --update git bash wget
RUN apt-get update -q
RUN apt-get install -qy \
  zip \
  kvm \
  wget \
  qemu-utils \
  libsdl1.2-dev \
  rm -rf /var/lib/apt/lists/*

RUN sed -i '/packer_${PACKER_VERSION}_linux_amd64.zip/!d' packer_${PACKER_VERSION}_SHA256SUMS
#RUN sha256sum -c packer_${PACKER_VERSION}_SHA256SUMS
RUN unzip packer_${PACKER_VERSION}_linux_amd64.zip -d /bin
RUN rm -f packer_${PACKER_VERSION}_linux_amd64.zip

ENTRYPOINT ["/bin/packer"]
