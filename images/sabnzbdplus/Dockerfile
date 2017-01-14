FROM ubuntu:xenial

# Additional support packages can be specified as build arguments
ARG EXTRA_PACKAGES=

RUN \
  apt-get update -qqy && \
  apt-get install --no-install-recommends -qqy \
    software-properties-common python-software-properties add-apt-key && \
  add-apt-repository ppa:jcfp/ppa && \
  apt-get update -qqy && \
  apt-get install --no-install-recommends -qqy \
    javascript-common libjs-excanvas libjs-mochikit libtidy-0.99-0 par2 python-chardet \
    python-cheetah python-configobj python-feedparser python-libxml2 python-openssl python-utidylib \
    python-yenc python-dbus zip unrar-free unzip par2 python-markdown python-pygments python-memcache \
    sabnzbdplus sabnzbdplus-theme-plush sabnzbdplus-theme-smpl \
    $EXTRA_PACKAGES && \
  apt-get autoclean -qqy

RUN \
  mkdir -p /data/sabnzbd

EXPOSE 8080 4000 80 443
VOLUME /data/sabnzbd

CMD ["sabnzbdplus"]
