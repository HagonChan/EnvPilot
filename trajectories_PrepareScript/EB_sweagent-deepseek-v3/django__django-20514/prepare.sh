ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
open "pyproject.toml"
open "README.rst"
open "docs/intro/install.txt"
open "tests/requirements/py3.txt"
python3.12 --version
apt-get update && apt-get install -y python3.12
add-apt-repository ppa:deadsnakes/ppa -y && apt-get update
apt-get install -y software-properties-common
add-apt-repository ppa:deadsnakes/ppa -y && apt-get update
apt-get install -y python3.12
python3.12 --version
pip install -r tests/requirements/py3.txt
python3.12 -m ensurepip --upgrade
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && python3.12 get-pip.py
apt-get install -y curl
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && python3.12 get-pip.py
pip install -r tests/requirements/py3.txt
pip install aiosmtpd>=1.4.5 asgiref>=3.9.1 argon2-cffi>=23.1.0 bcrypt>=4.1.1
apt-get update
pip install --no-cache-dir aiosmtpd>=1.4.5 asgiref>=3.9.1 argon2-cffi>=23.1.0 bcrypt>=4.1.1
pip install -e .
python -Wall tests/runtests.py -v2
python3.12 -Wall tests/runtests.py -v2
python3.11 --version
apt-get install -y python3.11
python3.11 --version
python3.11 -m ensurepip --upgrade
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && python3.11 get-pip.py
python3.11 -m pip install -r tests/requirements/py3.txt
apt-get install -y build-essential
python3.11 -m pip install -r tests/requirements/py3.txt
apt-get install -y python3.11-dev
python3.11 -m pip install -r tests/requirements/py3.txt
python3.11 -m pip install -e .
python3.12 -m pip install -e .
python3.12 -Wall tests/runtests.py -v2
python3.11 -Wall tests/runtests.py -v2
python3.10 --version
python3.10 -m ensurepip --upgrade
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && python3.10 get-pip.py
python3.10 -m pip install -r tests/requirements/py3.txt
apt-get install -y python3.10-dev
python3.10 -m pip install -r tests/requirements/py3.txt
python3.10 -m pip install -e .
python3.11 --version
python3.11 -m pip install -e .

