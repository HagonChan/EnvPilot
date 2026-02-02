find_file '.github/workflows/*.yml'
find_file .gitlab-ci.yml
find_file .circleci/config.yml
find_file Jenkinsfile
find_file azure-pipelines.yml
find_file requirements.txt
find_file setup.py
find_file pyproject.toml
find_file README.md
open "/testbed/README.md"
find_file Makefile
find_file tox.ini
find_file environment.yml
find_file INSTALL.md
open "/testbed/doc/INSTALL.md"
open "/testbed/.github/workflows/build.yaml"
sudo apt-get update
apt-get update
apt-get install -y elfutils libhiredis-dev libzstd-dev ninja-build pkg-config python3 redis-server redis-tools
mkdir build && cd build && cmake -DCMAKE_BUILD_TYPE=Release ..
apt-get install -y cmake
cmake -DCMAKE_BUILD_TYPE=Release ..
apt-get install -y g++
cmake -DCMAKE_BUILD_TYPE=Release ..
make
ctest
