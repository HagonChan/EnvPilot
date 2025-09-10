ls -la
ls -la .github/workflows
open ".travis.yml"
open "azure-pipelines.yml"
python3 -m pip install --upgrade tox
ls /usr/bin/python*
apt-get update && apt-get install -y python3.7 python3.7-dev
apt-cache search python3 | grep '^python3\.'
apt-get install -y python3.10 python3.10-dev
ln -sf /usr/bin/python3.10 /usr/bin/python3
python3 -m pip install --upgrade tox
python3 -m ensurepip --upgrade
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && python3 get-pip.py
apt-get install -y curl
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && python3 get-pip.py
python3 -m pip install --upgrade tox
open "pyproject.toml"
open "setup.py"
python3 -m pip install -e .
python3 -m pip install --upgrade virtualenv
python3 -m virtualenv venv
source venv/bin/activate && python3 -m pip install -e .
source venv/bin/activate && tox
open "tox.ini"
edit 'passenv = USER USERNAME COVERAGE_* TRAVIS PYTEST_ADDOPTS' 'passenv = USER,USERNAME,COVERAGE_*,TRAVIS,PYTEST_ADDOPTS' False
source venv/bin/activate && tox
source venv/bin/activate && tox -e py37
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
    py310
    pypy
    pypy3
    {py27,py37}-{pexpect,xdist,twisted,numpy,pluggymaster}
    py27-nobyte-xdist
    doctesting
    py37-freeze
    docs' False
source venv/bin/activate && tox -e py310
open "setup.py"
edit '"pluggy>=0.9,!=0.10,<1.0"' '"pluggy>=1.0.0"' False
source venv/bin/activate && python3 -m pip install -e .
source venv/bin/activate && tox -e py310
apt-get install -y python3.7 python3.7-dev
apt-get install -y software-properties-common && add-apt-repository -y ppa:deadsnakes/ppa && apt-get update && apt-get install -y python3.7 python3.7-dev
python3.7 -m venv venv37 && source venv37/bin/activate && python3.7 -m pip install -e .
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && python3.7 get-pip.py
curl https://bootstrap.pypa.io/pip/3.7/get-pip.py -o get-pip.py && python3.7 get-pip.py
apt-get install -y python3.7-distutils
curl https://bootstrap.pypa.io/pip/3.7/get-pip.py -o get-pip.py && python3.7 get-pip.py
python3.7 -m venv venv37 && source venv37/bin/activate && python3.7 -m pip install -e .
python3.7 -m venv --without-pip venv37 && source venv37/bin/activate && curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && python3.7 get-pip.py && python3.7 -m pip install -e .
source venv37/bin/activate && curl https://bootstrap.pypa.io/pip/3.7/get-pip.py -o get-pip.py && python3.7 get-pip.py && python3.7 -m pip install -e .
source venv37/bin/activate && tox -e py37
source venv37/bin/activate && python3.7 -m pip install argcomplete atomicwrites>=1.0 attrs>=17.4.0 colorama funcsigs>=1.0 hypothesis>=3.56 mock more-itertools>=4.0.0 nose pathlib2>=2.2.0 pluggy>=1.0.0 py>=1.5.0 requests setuptools six>=1.10.0 wcwidth
source venv37/bin/activate && python3.7 -m pytest
