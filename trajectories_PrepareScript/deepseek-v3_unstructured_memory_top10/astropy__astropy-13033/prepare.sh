ls -la
ls -la .github/workflows
open ".github/workflows/ci_workflows.yml"
open "tox.ini"
apt-get update && apt-get install -y language-pack-de tzdata language-pack-fr graphviz git g++ pkg-config python3 python3-configobj python3-numpy python3-ply python3-venv cython3 libwcs7 wcslib-dev libcfitsio-dev liberfa1
pip install --upgrade tox
apt-get install -y python3-pip
pip install --upgrade tox
tox -e py38-test
open "tox.ini"
edit 'passenv = HOME WINDIR LC_ALL LC_CTYPE CC CI IS_CRON ARCH_ON_CI TEST_READ_HUGE_FILE' 'passenv = HOME,WINDIR,LC_ALL,LC_CTYPE,CC,CI,IS_CRON,ARCH_ON_CI,TEST_READ_HUGE_FILE' True
tox -e py38-test
apt-get install -y python3.8 python3.8-dev python3.8-venv
apt-get install -y software-properties-common && add-apt-repository -y ppa:deadsnakes/ppa && apt-get update
apt-get install -y python3.8 python3.8-dev python3.8-venv
tox -e py38-test
pip install setuptools==58.0.4
tox -e py38-test
edit 'deps =' 'deps =
    setuptools==58.0.4' False
tox -e py38-test
create fix_setuptools.sh
edit '' '#!/bin/bash
# Install setuptools==58.0.4 in the tox environment
pip install setuptools==58.0.4
# Run the tox test for py38-test
tox -e py38-test' False
edit '' '#!/bin/bash
# Install setuptools==58.0.4 in the tox environment
pip install setuptools==58.0.4
# Run the tox test for py38-test
tox -e py38-test' False
insert '#!/bin/bash
# Install setuptools==58.0.4 in the tox environment
pip install setuptools==58.0.4
# Run the tox test for py38-test
tox -e py38-test'
chmod +x fix_setuptools.sh && ./fix_setuptools.sh
pip install -e .
pip install --upgrade setuptools>=64
pip install -e .
python3 -m venv venv && source venv/bin/activate && pip install --upgrade setuptools>=64 && pip install -e .
pip install -r requirements.txt
open "setup.py"
cat setup.py
cat setup.cfg
pip install numpy>=1.18 pyerfa>=2.0 PyYAML>=3.13 packaging>=19.0
pip install pytest>=7.0 pytest-doctestplus>=0.12 pytest-astropy-header>=0.2.1 pytest-astropy>=0.9 pytest-xdist
pytest
