
find_file '*.yml'
open "/testbed/.github/workflows/unit-tests.yml"
scroll_down
open "/testbed/environment.yml"
conda env create -f environment.yml
sudo apt-get update && sudo apt-get install -y python3 python3-pip python3-dev libegl1 libopengl0
apt-get update && apt-get install -y python3 python3-pip python3-dev libegl1 libopengl0
pip3 install -r <(grep -E '^[^#]' environment.yml | awk '{print $2}' | tr -d '"')
pip3 install pytest pytest-cov pytest-xdist pytest-qt pytest-localserver coverage python-dateutil numpy
pytest
find_file setup.py
open "/testbed/setup.py"
python3 setup.py build && python3 setup.py install
pip3 install versioneer
python3 setup.py build && python3 setup.py install
pip3 install Cython
python3 setup.py build && python3 setup.py install
find_file Makefile
find_file README.md
open "/testbed/README.md"
pytest
pip3 install .
pip3 install meson
pip3 install .
apt-get install -y ninja-build
pip3 install .
apt-get install -y python3.11 python3.11-dev python3.11-distutils
update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.11 1
pip3 install .
add-apt-repository ppa:deadsnakes/ppa && apt-get update && apt-get install -y python3.11
apt-get install -y wget && wget https://www.python.org/ftp/python/3.11.0/Python-3.11.0.tgz && tar -xzf Python-3.11.0.tgz && cd Python-3.11.0 && ./configure --enable-optimizations && make && make install
pip3 install .
echo 'deb http://ppa.launchpad.net/deadsnakes/ppa/ubuntu jammy main' | tee /etc/apt/sources.list.d/deadsnakes-ppa.list && apt-get update && apt-get install -y python3.11
pytest
pip3 install --force-reinstall pytest pytest-cov pytest-xdist pytest-qt pytest-localserver coverage python-dateutil numpy
pytest
pip3 install PyQt5
pytest
apt-get install -y libglib2.0-0
pytest
apt-get install -y libgl1
pytest
apt-get install -y python3-tk
pytest
