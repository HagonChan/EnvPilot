ls -la
open ".travis.yml"
open "tox.ini"
pip install tox
apt-get update && apt-get install -y python3-pip
pip install tox
tox -e py37
edit 'passenv = USER USERNAME COVERAGE_* TRAVIS PYTEST_ADDOPTS' 'passenv = USER,USERNAME,COVERAGE_*,TRAVIS,PYTEST_ADDOPTS' True
tox -e py37
python3 --version
apt-get install -y python3.7
add-apt-repository ppa:deadsnakes/ppa && apt-get update
apt-get install -y software-properties-common
add-apt-repository ppa:deadsnakes/ppa && apt-get update
add-apt-repository ppa:deadsnakes/ppa
wget https://www.python.org/ftp/python/3.7.12/Python-3.7.12.tgz
apt-get install -y wget
wget https://www.python.org/ftp/python/3.7.12/Python-3.7.12.tgz
tar -xzf Python-3.7.12.tgz
cd Python-3.7.12 && ./configure --enable-optimizations
make -j$(nproc) && make altinstall
python3.7 --version
cd .. && tox -e py37
python3.7 -m pip install --upgrade pip==20.3.4
apt-get install -y libssl-dev
cd Python-3.7.12 && make clean && ./configure --enable-optimizations --with-ssl-default-suites=openssl && make -j$(nproc) && make altinstall
python3.7 -m pip --version
cd .. && tox -e py37
python3.7 -m pip install --upgrade pip==20.3.4
tox -e py37
python3.7 -m pip install argcomplete atomicwrites>=1.0 attrs>=17.4.0 colorama funcsigs>=1.0 hypothesis>=3.56 mock more-itertools>=4.0.0 nose pathlib2>=2.2.0 pluggy!=0.10,<1.0,>=0.9 py>=1.5.0 requests setuptools six>=1.10.0 wcwidth
python3.7 -m pip install 'argcomplete' 'atomicwrites>=1.0' 'attrs>=17.4.0' 'colorama' 'funcsigs>=1.0' 'hypothesis>=3.56' 'mock' 'more-itertools>=4.0.0' 'nose' 'pathlib2>=2.2.0' 'pluggy!=0.10,<1.0,>=0.9' 'py>=1.5.0' 'requests' 'setuptools' 'six>=1.10.0' 'wcwidth'
tox -e py37
python3.7 -m pip install 'argcomplete' 'atomicwrites>=1.0' 'attrs>=17.4.0' 'colorama' 'funcsigs>=1.0' 'hypothesis>=3.56' 'mock' 'more-itertools>=4.0.0' 'nose' 'pathlib2>=2.2.0' 'pluggy!=0.10,<1.0,>=0.9' 'py>=1.5.0' 'requests' 'setuptools' 'six>=1.10.0' 'wcwidth'
python3.7 -m pytest
python3.7 -m pip install pytest
python3.7 -m pytest
python3.7 -m pip install pytest==4.6.11
python3.7 -m pytest
