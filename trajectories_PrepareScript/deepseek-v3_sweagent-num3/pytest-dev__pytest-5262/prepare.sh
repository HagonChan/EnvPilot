ls -la
ls -la .github/workflows
open ".travis.yml"
open "azure-pipelines.yml"
open "tox.ini"
pip install tox
apt-get update && apt-get install -y python3-pip
pip install tox
tox -e py37
edit 'passenv = USER USERNAME COVERAGE_* TRAVIS PYTEST_ADDOPTS' 'passenv = USER,USERNAME,COVERAGE_*,TRAVIS,PYTEST_ADDOPTS' True
tox -e py37
python3 --version
search_file py310 tox.ini
edit 'envlist =' 'envlist =
    py310' False
tox -e py310
pip install --upgrade pytest
tox -e py310
find_file 'README*'
open "README.rst"
apt-get update && apt-get install -y python3.8
apt-get update && apt-get install -y python3.7
edit 'envlist =' 'envlist =
    py310' False
open "tox.ini"
pip install numpy pexpect pytest-xdist twisted unittest2
tox -e py310
edit 'pytest-xdist>=1.13' 'pytest-xdist>=1.13
    pytest>=7.0.0' False
tox -e py310
tox -e py310 --notest && .tox/py310/bin/pip install --force-reinstall pytest>=7.0.0
tox -e py310
apt-get update && apt-get install -y python3.8
apt-get update && apt-get install -y python3.7
pip install -e .
pip install --upgrade pytest>=7.0.0
pytest
search_dir RemovedInPytest4Warning .
edit 'ignore:yield tests are deprecated, and scheduled to be removed in pytest 4.0:pytest.RemovedInPytest4Warning' '' True
pytest
edit 'ignore:Metafunc.addcall is deprecated and scheduled to be removed in pytest 4.0:pytest.RemovedInPytest4Warning' '' True
edit ignore::pytest.RemovedInPytest4Warning '' True
pytest
edit 'rsyncdirs = tox.ini doc src testing' '' True
pytest
pip install pytest==6.2.5
pip install pytest-xdist==2.5.0
pytest
pip install hypothesis
search_dir 'from _pytest.main import EXIT_NOTESTSCOLLECTED' .
open "testing/acceptance_test.py"
search_file 'from _pytest.main import EXIT_NOTESTSCOLLECTED' testing/acceptance_test.py

