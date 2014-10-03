#
# Preparing Ruby/Rbenv Dockerfile
#
# https://github.com/dockerfile/ruby
#
# Pull base image.
FROM ubuntu:12.04
MAINTAINER AchieveMore <desenvolvimento@achievemore.com.br>

# Install.
RUN \
  sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y build-essential && \
  apt-get install -y software-properties-common && \
  apt-get install -y byobu curl git htop man unzip vim wget && \
  rm -rf /var/lib/apt/lists/*

# Add files.
ADD root/.bashrc /root/.bashrc
ADD root/.gitconfig /root/.gitconfig
ADD root/.scripts /root/.scripts

# Set environment variables.
ENV HOME /root

# Define working directory.
WORKDIR /root

ENV HOME /azk
ENV PATH $HOME/.rbenv/bin:$HOME/.rbenv/shims:$PATH
ENV SHELL /bin/bash

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
  libmysqlclient-dev \
  libpq-dev \
  nodejs \
  inotify-tools

RUN git clone --quiet --depth 1 https://github.com/sstephenson/rbenv.git \
  $HOME/.rbenv
RUN git clone --quiet --depth 1 https://github.com/sstephenson/ruby-build.git \
  $HOME/.rbenv/plugins/ruby-build
RUN echo 'eval "$(rbenv init -)"' >> $HOME/.profile
RUN echo 'eval "$(rbenv init -)"' >> $HOME/.bashrc

# Define default command.
CMD ["bash"]