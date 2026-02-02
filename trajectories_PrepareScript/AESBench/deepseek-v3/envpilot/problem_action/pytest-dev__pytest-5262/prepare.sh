ls -la
open ".travis.yml"
open "tox.ini"
open "setup.py"
python3.7 --version
apt-get update && apt-get install -y python3.7
apt-get install -y software-properties-common && add-apt-repository -y ppa:deadsnakes/ppa && apt-get update && apt-get install -y python3.7
python3.7 --version && python3.7 -m pip --version
curl https://bootstrap.pypa.io/pip/3.7/get-pip.py -o get-pip.py && python3.7 get-pip.py
apt-get install -y curl
curl https://bootstrap.pypa.io/pip/3.7/get-pip.py -o get-pip.py && python3.7 get-pip.py
apt-get install -y python3.7-distutils
python3.7 get-pip.py
python3.7 -m pip --version
python3.7 -m pip install tox
tox
open "tox.ini"
edit 'passenv = USER USERNAME COVERAGE_* TRAVIS PYTEST_ADDOPTS' 'passenv = USER,USERNAME,COVERAGE_*,TRAVIS,PYTEST_ADDOPTS' False
sed -i 's/passenv = USER USERNAME COVERAGE_\* TRAVIS PYTEST_ADDOPTS/passenv = USER,USERNAME,COVERAGE_*,TRAVIS,PYTEST_ADDOPTS/' tox.ini
tox
python3.7 -m pytest
python3.7 -m pip install pytest
python3.7 -m pytest
python3.7 -m pip uninstall -y pytest && python3.7 -m pip install pytest==4.6.0
python3.7 -m pytest
python3.7 -m pip install hypothesis
python3.7 -m pytest
python3.7 -m pytest -p no:warnings
python3.7 -m pip uninstall -y pytest && python3.7 -m pip install pytest==7.4.4
python3.7 -m pytest
python3.7 -m pip uninstall -y pytest && python3.7 -m pip install pytest==6.2.5
python3.7 -m pytest
python3.7 -m pytest -p no:warnings
python3.7 -m pip uninstall -y pytest && python3.7 -m pip install pytest==4.6.0
python3.7 -m pytest
python3.7 -m pytest -p no:warnings
python3.7 -m pip uninstall -y pytest && python3.7 -m pip install pytest==6.2.5
python3.7 -m pytest
python3.7 -m pip uninstall -y pytest && python3.7 -m pip install pytest==7.4.4
python3.7 -m pytest -p no:warnings
python3.7 -m pip uninstall -y pytest && python3.7 -m pip install pytest==4.6.0
python3.7 -m pytest -p no:warnings
python3.7 -m pip uninstall -y pytest && python3.7 -m pip install pytest==6.2.5
python3.7 -m pytest -p no:warnings
python3.7 -m pip uninstall -y pytest && python3.7 -m pip install pytest==4.6.0
python3.7 -m pytest -p no:warnings
python3.7 -m pip uninstall -y pytest && python3.7 -m pip install pytest==3.10.1
python3.7 -m pytest -p no:warnings
python3.7 -m pytest -p no:warnings --strict-markers=0

