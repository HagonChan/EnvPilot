ls -la
ls -la .github/workflows
open ".travis.yml"
open "azure-pipelines.yml"
open "tox.ini"
pip install tox
apt-get update && apt-get install -y python3-pip
pip install tox
tox
edit 'passenv = USER USERNAME COVERAGE_* TRAVIS PYTEST_ADDOPTS' 'passenv = USER,USERNAME,COVERAGE_*,TRAVIS,PYTEST_ADDOPTS' True
tox
tox -e py37
apt-get update && apt-get install -y python3.7
add-apt-repository ppa:deadsnakes/ppa -y && apt-get update
apt-get install -y software-properties-common
add-apt-repository ppa:deadsnakes/ppa -y && apt-get update
apt-get install -y python3.7
tox -e py37
python3.7 -m pip install typing_extensions==4.0.1
apt-get install -y python3.7-distutils
python3.7 -m pip install typing_extensions==4.0.1
tox -e py37
python3.7 -m pip install pip==20.3.4
tox -e py37
python3.7 -m pip install argcomplete atomicwrites>=1.0 attrs>=17.4.0 colorama funcsigs>=1.0 hypothesis>=3.56 mock more-itertools>=4.0.0 nose pathlib2>=2.2.0 pluggy!=0.10,<1.0,>=0.9 py>=1.5.0 requests setuptools six>=1.10.0 wcwidth
python3.7 -m pip install "argcomplete" "atomicwrites>=1.0" "attrs>=17.4.0" "colorama" "funcsigs>=1.0" "hypothesis>=3.56" "mock" "more-itertools>=4.0.0" "nose" "pathlib2>=2.2.0" "pluggy!=0.10,<1.0,>=0.9" "py>=1.5.0" "requests" "setuptools" "six>=1.10.0" "wcwidth"
ls -la tests
ls -la *.py | grep -i test
search_file test tox.ini
ls -la testing
cd testing && python3.7 -m pytest
python3.7 -m pip install pytest
cd testing && python3.7 -m pytest
pwd && ls -la
python3.7 -m pytest
python3.7 -m pip install pytest==3.10.1
python3.7 -m pytest
python3.7 -m pytest --no-strict-markers
edit --strict-markers '' True
open "/testbed/tox.ini"
python3.7 -m pytest
echo $PYTEST_ADDOPTS
python3.7 -m pytest testing/
python3.7 -m pytest testing/test_pdb.py
ls -la pytest.ini setup.cfg
