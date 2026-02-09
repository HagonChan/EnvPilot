
find_file '*.yml'
open "/testbed/.azure-pipelines/ci.yml"
open "/testbed/.azure-pipelines/prebuild-checks.yml"
find_file requirements.txt
open "/testbed/Doc/requirements.txt"
find_file setup.py
find_file README.md
open "/testbed/InternalDocs/README.md"
find_file Makefile
open "/testbed/Doc/Makefile"
make venv
python3 -m venv venv
find_file '*.sh'
open "/testbed/.github/workflows/posix-deps-apt.sh"
create install_dependencies.sh
insert '#!/bin/sh
apt-get update

apt-get -yq install \
    build-essential \
    pkg-config \
    ccache \
    cmake \
    gdb \
    lcov \
    libb2-dev \
    libbz2-dev \
    libffi-dev \
    libgdbm-dev \
    libgdbm-compat-dev \
    liblzma-dev \
    libncurses5-dev \
    libreadline6-dev \
    libsqlite3-dev \
    libssl-dev \
    libzstd-dev \
    lzma \
    lzma-dev \
    strace \
    tk-dev \
    uuid-dev \
    xvfb \
    zlib1g-dev

# Workaround missing libmpdec-dev on ubuntu 24.04:
# https://launchpad.net/~ondrej/+archive/ubuntu/php
# https://deb.sury.org/
sudo add-apt-repository ppa:ondrej/php
apt-get update
apt-get -yq install libmpdec-dev' 0
find_file test
find_file '*test*' Lib
create run_tests.sh
insert '#!/bin/sh
source venv/bin/activate
python -m unittest discover -s Lib/test -p "test_*.py"
deactivate' 0
