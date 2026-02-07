ls -la
ls -la .github/workflows
open ".travis.yml"
open "tox.ini"
open "setup.py"
python3 -m venv venv
which python
which python2.7
apt-get update && apt-get install -y python3.7 python3-pip
apt-get install -y python3.8 python3-pip
apt-cache search python3 | grep '^python3'
apt-get install -y python3.11 python3-pip
python3.11 -m venv venv
apt-get install -y python3.11-venv
python3.11 -m venv venv
source venv/bin/activate
pip install -e .
pip install tox
pip install 'pluggy<1.0'
deactivate && python3.11 -m venv tox-env && source tox-env/bin/activate
pip install tox
deactivate && source venv/bin/activate
../tox-env/bin/tox
find ../tox-env -name tox
ls -la
./tox-env/bin/tox
edit 'pass_env = USER USERNAME COVERAGE_* TRAVIS PYTEST_ADDOPTS' 'pass_env = USER,USERNAME,COVERAGE_*,TRAVIS,PYTEST_ADDOPTS' True
open "tox.ini"
edit 'passenv = USER USERNAME COVERAGE_* TRAVIS PYTEST_ADDOPTS' 'passenv = USER,USERNAME,COVERAGE_*,TRAVIS,PYTEST_ADDOPTS'
./tox-env/bin/tox
./tox-env/bin/tox -e py37
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
    docs'
goto 6
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
    {py27,py37,py311}-{pexpect,xdist,twisted,numpy,pluggymaster}
    py27-nobyte-xdist
    doctesting
    py37-freeze
    docs'
./tox-env/bin/tox -e py311
./tox-env/bin/tox -e py37
edit '[testenv:py37]
basepython = python3.7' '[testenv:py37]
basepython = python3.11'
search_file '[testenv:py37]' tox.ini
edit 'envlist =
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
    {py27,py37,py311}-{pexpect,xdist,twisted,numpy,pluggymaster}
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
    {py27,py37,py311}-{pexpect,xdist,twisted,numpy,pluggymaster}
    py27-nobyte-xdist
    doctesting
    py37-freeze
    docs'
which python3.7
apt-get install -y python3.7 python3.7-venv
apt-get install -y python3.8 python3.8-venv
edit '[testenv:py37]' '[testenv:py37]
basepython = python3.11'
search_file '[testenv:py37]' tox.ini
edit '[testenv:py37]' '[testenv:py37]
basepython = python3.11'
search_file '[testenv:py37]' tox.ini
edit 'basepython = python3' 'basepython = python3.11'
search_file '[testenv:py37]
basepython = python3' tox.ini
edit '[testenv:py37]' '[testenv:py37]
basepython = python3.11'

