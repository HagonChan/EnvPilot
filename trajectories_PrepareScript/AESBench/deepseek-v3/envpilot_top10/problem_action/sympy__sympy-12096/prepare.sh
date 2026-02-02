find_file '.github/workflows/*.yml'
find_file .gitlab-ci.yml
find_file .circleci/config.yml
find_file azure-pipelines.yml
find_file Jenkinsfile
find_file requirements.txt
find_file setup.py
open "/testbed/setup.py"
find_file README.md
open "/testbed/release/README.md"
find_file Makefile
open "/testbed/doc/Makefile"
find_file tox.ini
find_file environment.yml
ls -la
open "/testbed/tox.ini.sample"
open "/testbed/setup.py"
open "/testbed/README.rst"
python --version
python3 --version
apt-get update && apt-get install -y python3 python3-pip
python3 --version
pip3 --version
python3 -m venv venv
apt-get install -y python3.10-venv
python3 -m venv venv
source venv/bin/activate
pip install -e .
pip install pytest
pytest
pip install --upgrade sympy
pytest
pip install --upgrade pytest==6.2.5
pytest
pip install --upgrade sympy==1.5.1
pytest
pip install --upgrade sympy==1.4
pytest
pip install --upgrade sympy==1.3
pytest
pip install --upgrade sympy==1.2
pytest
pip install --upgrade sympy==1.1
pytest
pip install --upgrade sympy==1.0
pytest
pip install --upgrade sympy==1.0.1
pip install --upgrade sympy==1.1
pytest

