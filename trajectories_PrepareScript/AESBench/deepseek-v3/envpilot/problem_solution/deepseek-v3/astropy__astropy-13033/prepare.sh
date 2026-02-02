ls -la
ls -la .github/workflows
open ".github/workflows/ci_workflows.yml"
open "tox.ini"
open "pyproject.toml"
open "setup.py"
open "setup.cfg"
apt-get update && apt-get install -y language-pack-de language-pack-fr tzdata graphviz g++ pkg-config python3-configobj python3-numpy python3-ply python3-venv cython3 libwcs7 wcslib-dev libcfitsio-dev liberfa1 git python3-dev build-essential libssl-dev
pip install --upgrade tox codecov
apt-get install -y python3-pip
pip install --upgrade tox codecov
tox
open "tox.ini"
edit 'passenv = HOME WINDIR LC_ALL LC_CTYPE CC CI IS_CRON ARCH_ON_CI TEST_READ_HUGE_FILE' 'passenv = HOME,WINDIR,LC_ALL,LC_CTYPE,CC,CI,IS_CRON,ARCH_ON_CI,TEST_READ_HUGE_FILE' True
tox
apt-get install -y python3.8 python3.9 python3.10
add-apt-repository ppa:deadsnakes/ppa -y && apt-get update && apt-get install -y python3.8 python3.9 python3.10
apt-get install -y software-properties-common
add-apt-repository ppa:deadsnakes/ppa -y && apt-get update && apt-get install -y python3.8 python3.9 python3.10
tox
tox -e py39-test-alldeps
apt-get install -y python3-distutils
rm -rf .tox && tox -e py39-test-alldeps
apt-get install -y python3.9-venv
tox -e py39-test-alldeps
pip install --upgrade setuptools
tox -e py39-test-alldeps
python3.9 -m pip install --upgrade setuptools --target .tox/py39-test-alldeps/lib/python3.9/site-packages
tox -e py39-test-alldeps
python3.10 -m pip install --upgrade setuptools --target .tox/.pkg/lib/python3.10/site-packages
tox -e py39-test-alldeps
python3.10 -m pip install --upgrade setuptools --target .tox/.tox/lib/python3.10/site-packages
tox -e py39-test-alldeps
python3.10 -m pip install --upgrade setuptools --target .tox/.pkg/lib/python3.10/site-packages
tox -e py39-test-alldeps
python3.10 -m pip install --upgrade setuptools --target .tox/.tox/lib/python3.10/site-packages
tox -e py39-test-alldeps
python3.10 -m pip install --upgrade setuptools --target .tox/.pkg/lib/python3.10/site-packages
tox -e py39-test-alldeps
python3.10 -m pip install --upgrade setuptools --target .tox/.tox/lib/python3.10/site-packages
tox -e py39-test-alldeps
python3.10 -m pip install --upgrade setuptools --target .tox/.pkg/lib/python3.10/site-packages
tox -e py39-test-alldeps
python3.10 -m pip install --upgrade setuptools --target .tox/.tox/lib/python3.10/site-packages
tox -e py39-test-alldeps
python3.10 -m pip install --upgrade setuptools --target .tox/.pkg/lib/python3.10/site-packages
tox -e py39-test-alldeps
python3.10 -m pip install --upgrade setuptools --target .tox/.tox/lib/python3.10/site-packages
tox -e py39-test-alldeps

