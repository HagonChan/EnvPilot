ls -la
open "README.rst"
open "docs/internals/contributing/writing-code/unit-tests.txt"
open "tox.ini"
open "tests/requirements/py3.txt"
apt-get update && apt-get install -y python3 python3-pip
pip install tox
tox
edit 'passenv = DJANGO_SETTINGS_MODULE PYTHONPATH HOME DISPLAY' 'passenv = DJANGO_SETTINGS_MODULE,PYTHONPATH,HOME,DISPLAY' True
open "tox.ini"
edit 'passenv = DJANGO_SETTINGS_MODULE PYTHONPATH HOME DISPLAY' 'passenv = DJANGO_SETTINGS_MODULE,PYTHONPATH,HOME,DISPLAY' False
tox
pip install -e .
tox
edit 'usedevelop = true' 'usedevelop = true
deps =
    -e .
    -rtests/requirements/py3.txt' False
tox
edit 'deps =
    py{3,35,36}: -rtests/requirements/py3.txt
    postgres: -rtests/requirements/postgres.txt
    mysql: -rtests/requirements/mysql.txt
    oracle: -rtests/requirements/oracle.txt' '' False
tox
flake8 --select W504 --statistics
pip install flake8
flake8 --select W504 --statistics
pip install autopep8
autopep8 --select=W504 --in-place --recursive .
pip install isort
isort .
tox
autopep8 --select=E128,E741 --in-place --recursive .
edit '[testenv:docs]
commands = make spelling' '[testenv:docs]
skip_install = true
commands =' False
open "tox.ini"
edit 'envlist =
    py3
    flake8
    docs
    isort' 'envlist =
    py3
    flake8
    isort' False
edit '[testenv:docs]
basepython = python3
usedevelop = false
whitelist_externals =
    make
deps =
    Sphinx
    pyenchant
    sphinxcontrib-spelling
changedir = docs
commands =
    make spelling' '' False
tox
autopep8 --select=E128,E741 --in-place --recursive .
autopep8 --select=W504,W503 --in-place --recursive .
tox
autopep8 --select=E128,E741 --in-place --recursive .
autopep8 --select=W504,W503 --in-place --recursive .
tox
autopep8 --select=E128,E741 --in-place --recursive .
autopep8 --select=W504,W503 --in-place --recursive .
tox
autopep8 --select=E128,E741 --in-place --recursive .
autopep8 --select=W504,W503 --in-place --recursive .
tox
autopep8 --select=E128,E741 --in-place --recursive .
autopep8 --select=W504,W503 --in-place --recursive .
tox
autopep8 --select=E128,E741 --in-place --recursive .
autopep8 --select=W504,W503 --in-place --recursive .

