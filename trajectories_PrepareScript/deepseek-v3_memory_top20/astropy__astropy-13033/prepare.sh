ls -la
open "pyproject.toml"
open "tox.ini"
apt-get update && apt-get install -y language-pack-de language-pack-fr tzdata graphviz g++ pkg-config python3-configobj python3-numpy python3-ply python3-venv cython3 libwcs7 wcslib-dev libcfitsio-dev liberfa1 git python3-dev build-essential libssl-dev
pip install --upgrade tox codecov
apt-get install -y python3-pip
pip install --upgrade tox codecov
tox --version && pip --version
pip install -e .
pip install --upgrade setuptools
python3 -m venv venv
source venv/bin/activate && pip install -e .
source venv/bin/activate && pip install --upgrade setuptools
source venv/bin/activate && pip install -e .
source venv/bin/activate && tox
open "tox.ini"
edit 'passenv = HOME WINDIR LC_ALL LC_CTYPE CC CI IS_CRON ARCH_ON_CI TEST_READ_HUGE_FILE' 'passenv = HOME,WINDIR,LC_ALL,LC_CTYPE,CC,CI,IS_CRON,ARCH_ON_CI,TEST_READ_HUGE_FILE' False
source venv/bin/activate && tox
apt-get update && apt-get install -y python3.8 python3.9 python3.10 python3.8-venv python3.9-venv python3.10-venv
apt-get update -o Acquire::Check-Valid-Until=false -o Acquire::AllowInsecureRepositories=true -o Acquire::AllowDowngradeToInsecureRepositories=true && apt-get install -y python3.8 python3.9 python3.10 python3.8-venv python3.9-venv python3.10-venv
apt-get install -y software-properties-common && add-apt-repository -y ppa:deadsnakes/ppa && apt-get update && apt-get install -y python3.8 python3.9 python3.10 python3.8-venv python3.9-venv python3.10-venv
source venv/bin/activate && tox
source venv/bin/activate && export PIP_CERT=/etc/ssl/certs/ca-certificates.crt && tox
source venv/bin/activate && pip install pytest pytest-xdist pytest-cov && python -m pytest
source venv/bin/activate && pip install setuptools_scm && python -m pytest
apt-get install -y liberfa-dev
source venv/bin/activate && python -m pytest
source venv/bin/activate && pip install pyerfa
source venv/bin/activate && python -m pytest
source venv/bin/activate && pip install numpy==1.23.5
source venv/bin/activate && python -m pytest
source venv/bin/activate && python setup.py build_ext --inplace
source venv/bin/activate && pip install extension_helpers
source venv/bin/activate && python setup.py build_ext --inplace
source venv/bin/activate && pip install setuptools==59.6.0
source venv/bin/activate && pip install extension_helpers==1.0.0
source venv/bin/activate && python setup.py build_ext --inplace
source venv/bin/activate && pip install cython
source venv/bin/activate && python setup.py build_ext --inplace
source venv/bin/activate && python -m pytest
source venv/bin/activate && pip install hypothesis
source venv/bin/activate && python -m pytest
open "setup.cfg"
cat setup.cfg
source venv/bin/activate && python -m pytest --no-doctest-rst
source venv/bin/activate && python -m pytest astropy/tests
create pytest.ini
edit '' '[pytest]
addopts = -v'
source venv/bin/activate && export PYTEST_ADDOPTS="-v" && python -m pytest astropy/tests

