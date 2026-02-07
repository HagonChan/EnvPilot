ls -la
open ".travis.yml"
open "tox.ini"
open "setup.py"
pip install tox
apt-get update && apt-get install -y python3-pip
pip install tox
tox
open "tox.ini"
edit 'passenv = USER USERNAME COVERAGE_* TRAVIS PYTEST_ADDOPTS' 'passenv = USER,USERNAME,COVERAGE_*,TRAVIS,PYTEST_ADDOPTS'
tox
tox -e py37
apt-get install -y python3.7
apt-get install -y software-properties-common && add-apt-repository -y ppa:deadsnakes/ppa && apt-get update
apt-get install -y python3.7
tox -e py37
python3.7 -m pip install --upgrade pip==20.3.4
apt-get install -y python3-distutils
apt-get install -y python3.7-distutils
python3.7 -m pip install --upgrade pip==20.3.4
tox -e py37
python3.7 -m pip install --upgrade typing_extensions==4.1.1
tox -e py37
python3.7 -m pip install --upgrade pip==19.3.1
tox -e py37
python3.7 -m pip install typing_extensions==4.1.1
python3.7 -m pip install --force-reinstall typing_extensions==4.1.1
tox -e py37
python3.7 -m pip install argcomplete atomicwrites>=1.0 attrs>=17.4.0 colorama funcsigs>=1.0 hypothesis>=3.56 mock more-itertools>=4.0.0 nose pathlib2>=2.2.0 pluggy!=0.10,<1.0,>=0.9 py>=1.5.0 requests setuptools six>=1.10.0 wcwidth
python3.7 -m pip install "argcomplete" "atomicwrites>=1.0" "attrs>=17.4.0" "colorama" "funcsigs>=1.0" "hypothesis>=3.56" "mock" "more-itertools>=4.0.0" "nose" "pathlib2>=2.2.0" "pluggy!=0.10,<1.0,>=0.9" "py>=1.5.0" "requests" "setuptools" "six>=1.10.0" "wcwidth"
python3.7 -m pytest
python3.7 -m pip install pytest pytest-xdist pytest-cov
python3.7 -m pytest
python3.7 -m pip install --upgrade typing_extensions
python3.7 -m pytest
python3.7 -m pip install --upgrade pytest==4.6.11
python3.7 -m pip install --upgrade pytest-xdist==1.34.0
python3.7 -m pytest
