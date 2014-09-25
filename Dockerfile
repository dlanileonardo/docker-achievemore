#
# Ruby/RVM Dockerfile
#
# https://github.com/dockerfile/ruby
#
# Pull base image.
FROM dockerfile/ubuntu
MAINTAINER Odlanier Mendes <dlanileonardo@gmail.com>

RUN apt-get update
RUN apt-get -y install \
  libgdbm-dev \
  libncurses5-dev \
  pkg-config \
  libffi-dev \
  python-software-properties \
  wget \
  openssl \
  libreadline6 \
  libreadline6-dev \
  curl \
  git \
  zlib1g \
  zlib1g-dev \
  libssl-dev \
  libyaml-dev \
  sqlite3 \
  libxslt-dev \
  autoconf \
  libc6-dev \
  ncurses-dev \
  automake \
  libtool \
  bison \
  subversion \
  build-essential \
  libreadline-dev \
  libsqlite3-dev \
  libxml2-dev \
  libxslt1-dev \
  libmagickwand-dev \
  rmagic \
  inkscape \
  libmysqld-dev \
  libmysqlclient-dev \
  libpq-dev

RUN curl -L get.rvm.io | bash -s stable
RUN echo "source /usr/local/rvm/scripts/rvm" >> ~/.bashrc

ENV PATH /usr/local/rvm/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin