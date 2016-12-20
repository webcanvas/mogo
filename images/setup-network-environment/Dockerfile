FROM ubuntu:xenial
MAINTAINER chris@webcanvas.com.au

ENV \
  SNE_VERSION=1.0.1 \
  SNE_DIR=/etc/setup-network-environment

RUN echo 'APT::Install-Recommends 0;' >> /etc/apt/apt.conf.d/01-norecommends \
 && echo 'APT::Install-Suggests 0;' >> /etc/apt/apt.conf.d/01-norecommends \
 && apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y \
  vim.tiny wget sudo net-tools \
  ca-certificates unzip \
 && rm -rf /var/lib/apt/lists/*

RUN wget -N -P /usr/bin https://github.com/kelseyhightower/setup-network-environment/releases/download/${SNE_VERSION}/setup-network-environment \
 && chmod 755 /usr/bin/setup-network-environment

COPY tree /

VOLUME ["${SNE_DIR}"]
ENTRYPOINT ["/sbin/entrypoint.sh"]
