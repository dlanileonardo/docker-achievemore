#
# Ruby Dockerfile
#
# https://github.com/dockerfile/ruby
#
# Pull base image.
FROM dockerfile/ubuntu
MAINTAINER Odlanier Mendes <dlanileonardo@gmail.com>

# Install Ruby, Cmake
RUN \
  apt-get update && apt-get install -y ruby \
  ruby-dev \
  ruby-bundler \
  cmake \
  libmagickwand-dev \
  rmagic \
  inkscape \
  libmysqld-dev \
  libmysqlclient-dev && \
  rm -rf /var/lib/apt/lists/*

# Define working directory.
WORKDIR /data

# Define default command.
CMD ["bash"]