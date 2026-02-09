ls -la
open ".travis.yml"
open "azure-pipelines.yml"
open "pyproject.toml"
open "setup.py"
open "tox.ini"
apt-get update && apt-get install -y python3-dev build-essential
apt-get install -y python3-pip && pip3 install tox
tox
edit 'passenv = USER USERNAME COVERAGE_* TRAVIS PYTEST_ADDOPTS' 'passenv = USER,USERNAME,COVERAGE_*,TRAVIS,PYTEST_ADDOPTS' True
tox
tox -e py37
apt-get install -y python3.7 python3.7-dev
add-apt-repository ppa:deadsnakes/ppa -y && apt-get update
apt-get install -y software-properties-common
add-apt-repository ppa:deadsnakes/ppa -y && apt-get update
apt-get install -y python3.7 python3.7-dev
tox -e py37
python3.7 -m venv venv37 && . venv37/bin/activate && pip install -r test-requirements.txt
curl https://bootstrap.pypa.io/pip/3.7/get-pip.py -o get-pip.py && python3.7 get-pip.py
apt-get install -y curl
curl https://bootstrap.pypa.io/pip/3.7/get-pip.py -o get-pip.py && python3.7 get-pip.py
apt-get install -y python3.7-distutils
python3.7 get-pip.py
python3.7 -m venv venv37 && . venv37/bin/activate && pip install -r test-requirements.txt
. venv37/bin/activate && pip install pytest
python3.7 -m venv --without-pip venv37 && . venv37/bin/activate && curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && python3.7 get-pip.py
curl https://bootstrap.pypa.io/pip/3.7/get-pip.py -o get-pip.py && python3.7 get-pip.py
. venv37/bin/activate && pip install -r test-requirements.txt
. venv37/bin/activate && pip install -e .[test]
. venv37/bin/activate && pytest
. venv37/bin/activate && pip install hypothesis
. venv37/bin/activate && pytest
