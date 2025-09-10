ls -la
open ".travis.yml"
open "tox.ini"
python3.7 --version
apt-get update && apt-get install -y python3.7
apt-get install -y python3.8
apt-cache search python3 | grep '^python3'
apt-get install -y python3.11 python3-pip
pip install tox
tox
open "tox.ini"
edit 'passenv = USER USERNAME COVERAGE_* TRAVIS PYTEST_ADDOPTS' 'passenv = USER,USERNAME,COVERAGE_*,TRAVIS,PYTEST_ADDOPTS' False
tox
tox -e py37
open "tox.ini"
edit 'envlist =
    linting
    py27
    py34
    py35
    py36
    py37
    py38
    pypy
    pypy3
    {py27,py37}-{pexpect,xdist,twisted,numpy,pluggymaster}
    py27-nobyte-xdist
    doctesting
    py37-freeze
    docs' 'envlist =
    linting
    py27
    py34
    py35
    py36
    py37
    py38
    py311
    pypy
    pypy3
    {py27,py37}-{pexpect,xdist,twisted,numpy,pluggymaster}
    py27-nobyte-xdist
    doctesting
    py37-freeze
    docs' False
tox -e py311
open "setup.py"
pip install --upgrade pytest
tox -e py311
add-apt-repository ppa:deadsnakes/ppa && apt-get update && apt-get install -y python3.7 python3.7-dev
apt-get install -y software-properties-common
add-apt-repository ppa:deadsnakes/ppa && apt-get update && apt-get install -y python3.7 python3.7-dev
apt-get install -y python3.7 python3.7-dev
apt-get install -y python3.8 python3.8-dev
open "tox.ini"
pip install -r requirements.txt
open "setup.py"
pip install -e .
python3.11 -m venv venv
apt-get install -y python3.11-venv
python3.11 -m venv venv
source venv/bin/activate && pip install -e .
pip install tox
pip install pluggy==0.13.1 && pip install tox
pytest
apt-get install -y software-properties-common && add-apt-repository ppa:deadsnakes/ppa && apt-get update && apt-get install -y python3.7 python3.7-dev
apt-get install -y python3.8 python3.8-dev
open "tox.ini"
pip install -e .
python3.11 -m venv venv2
source venv2/bin/activate && pip install -e .
pip install tox
pip install pluggy==0.13.1 && pip install tox
pytest
apt-get install -y software-properties-common && add-apt-repository ppa:deadsnakes/ppa && apt-get update && apt-get install -y python3.7 python3.7-dev
apt-get install -y python3.8 python3.8-dev
open "tox.ini"
pip install -e .

