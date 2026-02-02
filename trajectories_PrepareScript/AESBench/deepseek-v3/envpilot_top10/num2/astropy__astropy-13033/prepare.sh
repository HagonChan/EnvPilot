ls -la
open "pyproject.toml"
open "tox.ini"
find_file '.github/workflows/*.yml'
open "azure-pipelines.yml"
apt-get update && apt-get install -y language-pack-de language-pack-fr tzdata graphviz g++ pkg-config python3-configobj python3-numpy python3-ply python3-venv cython3 libwcs7 wcslib-dev libcfitsio-dev liberfa1 git python3-dev build-essential libssl-dev
python3 -m pip install --upgrade tox codecov
apt-get install -y python3-pip
python3 -m pip install --upgrade tox codecov
export PYTHONPATH=$PYTHONPATH:$(pwd)
tox
open "tox.ini"
edit 'passenv = HOME WINDIR LC_ALL LC_CTYPE CC CI IS_CRON ARCH_ON_CI TEST_READ_HUGE_FILE' 'passenv = HOME,WINDIR,LC_ALL,LC_CTYPE,CC,CI,IS_CRON,ARCH_ON_CI,TEST_READ_HUGE_FILE' True
tox
tox -e py38-test
apt-get install -y python3.8 python3.8-venv
apt-get install -y software-properties-common && add-apt-repository ppa:deadsnakes/ppa -y && apt-get update
apt-get install -y python3.8 python3.8-venv
tox -e py38-test
edit 'deps =' 'deps =
    setuptools<58.0.0' False
tox -e py38-test
python3 -m pip install --force-reinstall 'setuptools<58.0.0'
tox -e py38-test
python3 -m pip install --force-reinstall 'setuptools<58.0.0' --target .tox/.pkg/lib/python3.10/site-packages
tox -e py38-test
echo 'pip install -r test-requirements.txt
pip install -e .
python3 -m pytest' > test_commands.sh && chmod +x test_commands.sh
./test_commands.sh
python3 -m pip install --upgrade 'setuptools>=64'
python3 -m pip install pytest
./test_commands.sh
python3 -m pip install setuptools_scm
echo 'pytest
pytest-cov
codecov
numpy
matplotlib
scipy' > test-requirements.txt
./test_commands.sh
apt-get install -y liberfa1
pip install -e .
python3 -m pip install --upgrade setuptools
export PYTHONPATH=/usr/local/lib/python3.10/dist-packages:$PYTHONPATH
pip install -e .
rm -rf /usr/lib/python3/dist-packages/setuptools*
python3 -m pip show setuptools
pip install -e .
python3 -m pip install --force-reinstall 'setuptools==57.5.0'
pip install -e .
python3 -m pytest
python3 -m pip install pyerfa
python3 -m pytest
find_file pytest.ini
find_file setup.cfg
open "setup.cfg"

