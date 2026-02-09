
find_file '*.yml'
open ".github/workflows/integration_tests.yml"
scroll_down
find_file Makefile
open "libs/langchain/Makefile"
cd libs/langchain && uv sync --group test --group test_integration
find_file README.md
open "libs/langchain/README.md"
open "libs/langchain/tests/README.md"
find_file setup.py
find_file requirements.txt
find_file pyproject.toml
open "libs/langchain/pyproject.toml"
ls -la
open "README.md"
open "extended_testing_deps.txt"
pip install uv
python --version
find_file install.sh
find_file environment.yml
open "Makefile"
ls -laR
create install_python.sh
insert '#!/bin/bash

# Install dependencies for building Python
apt-get update && apt-get install -y build-essential checkinstall
apt-get install -y libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev

# Download Python source code
PYTHON_VERSION=3.10.12
cd /tmp
wget https://www.python.org/ftp/python/$PYTHON_VERSION/Python-$PYTHON_VERSION.tgz

# Extract and install Python
tar -xzf Python-$PYTHON_VERSION.tgz
cd Python-$PYTHON_VERSION
./configure --enable-optimizations
make altinstall

# Verify installation
python3.10 --version
' 1
bash install_python.sh
ls -la scripts
create install_python_curl.sh
insert '#!/bin/bash

# Install dependencies for building Python
apt-get update && apt-get install -y build-essential checkinstall
apt-get install -y libreadline-dev libncurses-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev

# Download Python source code
PYTHON_VERSION=3.10.12
cd /tmp
curl -O https://www.python.org/ftp/python/$PYTHON_VERSION/Python-$PYTHON_VERSION.tgz

# Extract and install Python
tar -xzf Python-$PYTHON_VERSION.tgz
cd Python-$PYTHON_VERSION
./configure --enable-optimizations
make altinstall

# Verify installation
python3.10 --version
' 1
bash install_python_curl.sh
ls -la libs
create install_python_wget.sh
insert '#!/bin/bash

# Install dependencies for building Python
apt-get update && apt-get install -y build-essential checkinstall
apt-get install -y libreadline-dev libncurses-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev

# Download Python source code
PYTHON_VERSION=3.10.12
cd /tmp
wget https://www.python.org/ftp/python/$PYTHON_VERSION/Python-$PYTHON_VERSION.tgz

# Extract and install Python
tar -xzf Python-$PYTHON_VERSION.tgz
cd Python-$PYTHON_VERSION
./configure --enable-optimizations
make altinstall

# Verify installation
python3.10 --version
' 1
bash install_python_wget.sh
ls -la libs
create install_python_curl.sh
ls -la libs
create install_python_curl.sh
ls -la libs
create install_python_curl.sh
ls -la libs
create install_python_curl.sh
ls -la libs
create install_python_curl.sh
ls -la libs
create install_python_curl.sh
ls -la libs
create install_python_curl.sh
ls -la libs

