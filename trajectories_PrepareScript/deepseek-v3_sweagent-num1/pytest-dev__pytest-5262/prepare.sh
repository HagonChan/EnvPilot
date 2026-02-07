ls -la
ls -la .github/workflows
open ".travis.yml"
open "azure-pipelines.yml"
open "tox.ini"
pip install --upgrade tox
apt-get update && apt-get install -y python3-pip
pip install --upgrade tox
tox
edit 'passenv = USER USERNAME COVERAGE_* TRAVIS PYTEST_ADDOPTS' 'passenv = USER,USERNAME,COVERAGE_*,TRAVIS,PYTEST_ADDOPTS' False
tox
tox -e py37
ls /usr/bin/python*
apt-get install -y python3.7
apt-get install -y software-properties-common && add-apt-repository -y ppa:deadsnakes/ppa && apt-get update && apt-get install -y python3.7
python3.7 --version
tox -e py37
edit 'deps =' 'deps =
    typing-extensions<4.0.0' False
tox -e py37
tox -e py37 --notest
python3.7 -m venv venv37
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && python3.7 get-pip.py
apt-get install -y curl
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && python3.7 get-pip.py
curl https://bootstrap.pypa.io/pip/3.7/get-pip.py -o get-pip.py && python3.7 get-pip.py
apt-get install -y python3-distutils
apt-get install -y python3.7-distutils
python3.7 get-pip.py
python3.7 -m venv venv37
mkdir -p venv37/bin && ln -s /usr/bin/python3.7 venv37/bin/python && ln -s /usr/bin/python3.7 venv37/bin/python3
rm -f venv37/bin/python && rm -f venv37/bin/python3 && ln -s /usr/bin/python3.7 venv37/bin/python && ln -s /usr/bin/python3.7 venv37/bin/python3
source venv37/bin/activate && pip install -e .
tox -e py37
python3.7 -m pip install --upgrade pip==20.3.4
tox -e py37
tox -e py38
apt-get install -y python3.8
python3.8 --version
tox -e py38
apt-get install -y python3.8-distutils
tox -e py38
edit 'deps =' 'deps =
    pytest>=6.0.0
    typing-extensions<4.0.0' False
edit 'deps =
    pytest>=6.0.0
    typing-extensions<4.0.0
    typing-extensions<4.0.0' 'deps =
    pytest>=6.0.0
    typing-extensions<4.0.0' False
tox -e py38
edit 'deps =
    pytest>=6.0.0
    typing-extensions<4.0.0' 'deps =
    pytest>=6.0.0
    typing-extensions>=3.7.4,<4.0.0' False
tox -e py38
apt-get install -y python3.9
python3.9 --version
tox -e py39

