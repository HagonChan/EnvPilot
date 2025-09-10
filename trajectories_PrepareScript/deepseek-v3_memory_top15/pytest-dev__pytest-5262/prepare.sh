ls -la
ls -la .github/workflows
open ".travis.yml"
open "azure-pipelines.yml"
open "tox.ini"
pip install tox
apt-get update && apt-get install -y python3 python3-pip
pip3 install tox
tox
edit 'passenv = USER USERNAME COVERAGE_* TRAVIS PYTEST_ADDOPTS' 'passenv = USER,USERNAME,COVERAGE_*,TRAVIS,PYTEST_ADDOPTS' True
tox
tox -e py37
apt-get update && apt-get install -y python3.7
apt-get install -y software-properties-common && add-apt-repository -y ppa:deadsnakes/ppa && apt-get update && apt-get install -y python3.7
python3.7 --version
tox -e py37
python3.7 -m pip install --upgrade pip
apt-get install -y python3.7-distutils
python3.7 -m pip install --upgrade pip
tox -e py37
python3.7 -m pip install pip==21.3.1
tox -e py37
python3.7 -m pip install pip==20.3.4
tox -e py37
python3.7 -m pip install argcomplete atomicwrites>=1.0 attrs>=17.4.0 colorama funcsigs>=1.0 hypothesis>=3.56 mock more-itertools nose pathlib2>=2.2.0 pluggy!=0.10,<1.0,>=0.9 py>=1.5.0 requests setuptools six>=1.10.0 wcwidth
python3.7 -m pip install argcomplete 'atomicwrites>=1.0' 'attrs>=17.4.0' colorama 'funcsigs>=1.0' 'hypothesis>=3.56' mock 'more-itertools' nose 'pathlib2>=2.2.0' 'pluggy!=0.10,<1.0,>=0.9' 'py>=1.5.0' requests setuptools 'six>=1.10.0' wcwidth
python3.7 -m pip install pytest
python3.7 -m pytest
python3.7 -m pip install pytest==6.2.5
python3.7 -m pytest
search_dir RemovedInPytest4Warning
open "tox.ini"
find_file pytest.ini
open "doc/en/pytest.ini"
open "testing/example_scripts/collect/collect_init_tests/pytest.ini"
open "testing/test_warnings.py"
grep -r "RemovedInPytest4Warning" _pytest
python3.7 -m pip install -e .
python3.7 -m pytest
python3.7 -m pip install pytest
python3.7 -m pytest
python3.7 -m pip install pytest==4.6.11
python3.7 -m pytest
open "tox.ini"
