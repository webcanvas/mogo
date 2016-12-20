FROM ubuntu:xenial
MAINTAINER chris@webcanvas.com.au

ENV \
  SQUID_VERSION=3.5.12 \
  SQUID_CACHE_DIR=/var/spool/squid3 \
  SQUID_LOG_DIR=/var/log/squid3 \
  SQUID_USER=proxy

RUN echo 'APT::Install-Recommends 0;' >> /etc/apt/apt.conf.d/01norecommends \
 && echo 'APT::Install-Suggests 0;' >> /etc/apt/apt.conf.d/01norecommends \
 && apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y \
  vim.tiny wget sudo net-tools \
  ca-certificates unzip squid=${SQUID_VERSION}* \
 && rm -rf /var/lib/apt/lists/*

COPY tree /

EXPOSE 3128/tcp
VOLUME ["${SQUID_CACHE_DIR}"]
ENTRYPOINT ["/sbin/entrypoint.sh"]
