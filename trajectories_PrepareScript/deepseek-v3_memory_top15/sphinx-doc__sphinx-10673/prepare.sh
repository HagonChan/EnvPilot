ls -la
open "tox.ini"
pip install tox
apt-get install -y python3 python3-pip
apt-get update
apt-get install -y python3 python3-pip
pip3 --version
pip3 install tox
tox --version
export PYTHONPATH=$PYTHONPATH:$(pwd)
tox
pip install sphinxcontrib-applehelp sphinxcontrib-devhelp sphinxcontrib-htmlhelp sphinxcontrib-jsmath sphinxcontrib-qthelp sphinxcontrib-serializinghtml sphinxcontrib-websupport alabaster
tox
pip install 'sphinxcontrib-applehelp>=1.0.2' 'alabaster>=0.7.12,<0.8.0'
open "setup.py"
pip install -e .
tox
find_file requirements.txt
open ".circleci/config.yml"
pip install -U .[test]
tox
find_file requirements.txt
open ".circleci/config.yml"
pip install -U .[test]
tox
find_file requirements.txt
open ".circleci/config.yml"
pip install -U .[test]
tox
find_file requirements.txt
open ".circleci/config.yml"
pip install -U .[test]
tox
find_file requirements.txt
open ".circleci/config.yml"
pip install -U .[test]
tox
find_file requirements.txt
open ".circleci/config.yml"
pip install -U .[test]
tox
find_file requirements.txt
open ".circleci/config.yml"
pip install -U .[test]
tox
find_file requirements.txt
open ".circleci/config.yml"
pip install -U .[test]
tox

