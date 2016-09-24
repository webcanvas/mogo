FROM ubuntu:xenial
MAINTAINER Chris Kolenko <chris@webcanvas.com.au>

ENV DEBIAN_FRONTEND noninteractive
ENV TERM xterm
ENV LANG en_AU.UTF-8

ENV PLEX_MEDIA_SERVER_MAX_PLUGIN_PROCS 6
ENV PLEX_MEDIA_SERVER_MAX_STACK_SIZE 3000
ENV PLEX_MEDIA_SERVER_APPLICATION_SUPPORT_DIR /config
ENV PLEX_MEDIA_SERVER_HOME /usr/lib/plexmediaserver
ENV LD_LIBRARY_PATH /usr/lib/plexmediaserver
ENV TMPDIR /tmp

RUN locale-gen $LANG

RUN apt-get update -q
RUN apt-get install -qy --no-install-recommends \
    ca-certificates \
    curl \
    xmlstarlet && \
  curl -L 'https://plex.tv/downloads/latest/1?channel=8&build=linux-ubuntu-x86_64&distro=ubuntu' -o /tmp/plexmediaserver.deb && \
  dpkg -i /tmp/plexmediaserver.deb && rm -f /tmp/plexmediaserver.deb && \
  rm -rf /var/lib/apt/lists/* && \
  rm -rf /tmp/*

RUN useradd --system --uid 797 -M --shell /usr/sbin/nologin plex && \
  mkdir /config && \
  chown plex:plex /config

VOLUME ["/config", "/media"]
EXPOSE 32400 32400/udp 32469 32469/udp 5353/udp 1900/udp

COPY Preferences.xml /
COPY entrypoint.sh /
COPY retrieve-plex-token /usr/local/bin/

USER plex

WORKDIR /usr/lib/plexmediaserver
ENTRYPOINT ["/entrypoint.sh"]
CMD ./Plex\ Media\ Server
