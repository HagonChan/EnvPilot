ls
open "README.rst"
open "setup.py"
open "Makefile"
apt-get update && apt-get install -y libblas-dev liblapack-dev build-essential python3-dev
pip install numpy scipy pytest
apt-get install -y python3-pip
pip3 install numpy scipy pytest
pip3 install --no-cache-dir numpy scipy pytest
make inplace
open "Makefile"
edit 'PYTHON ?= python' 'PYTHON ?= python3'
make inplace
pip3 install Cython
make inplace
pip3 install --upgrade Cython
make clean && make inplace
apt-get install -y python3.8 python3.8-dev
apt-get install -y python3.9 python3.9-dev
pip3 show Cython numpy
make clean
pip3 uninstall -y Cython numpy && pip3 install Cython numpy
make inplace
pip3 install Cython==0.29.36
make inplace
dpkg -l | grep -E 'libblas-dev|liblapack-dev|build-essential|python3-dev'
pip3 uninstall -y numpy scipy && pip3 install numpy scipy
make inplace
dpkg -l | grep -E 'libblas-dev|liblapack-dev|build-essential|python3-dev'
pip3 uninstall -y numpy scipy && pip3 install numpy scipy
make inplace
dpkg -l | grep -E 'libblas-dev|liblapack-dev|build-essential|python3-dev'
pip3 uninstall -y numpy scipy && pip3 install numpy scipy
make inplace
dpkg -l | grep -E 'libblas-dev|liblapack-dev|build-essential|python3-dev'
pip3 uninstall -y numpy scipy && pip3 install numpy scipy
make inplace
dpkg -l | grep -E 'libblas-dev|liblapack-dev|build-essential|python3-dev'
pip3 uninstall -y numpy scipy && pip3 install numpy scipy
make inplace
dpkg -l | grep -E 'libblas-dev|liblapack-dev|build-essential|python3-dev'
pip3 uninstall -y numpy scipy && pip3 install numpy scipy
make inplace
dpkg -l | grep -E 'libblas-dev|liblapack-dev|build-essential|python3-dev'
pip3 uninstall -y numpy scipy && pip3 install numpy scipy
make inplace
dpkg -l | grep -E 'libblas-dev|liblapack-dev|build-essential|python3-dev'
pip3 uninstall -y numpy scipy && pip3 install numpy scipy
make inplace

