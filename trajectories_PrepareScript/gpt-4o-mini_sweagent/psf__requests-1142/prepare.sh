
find_file '*.yml'
open "/testbed/.travis.yml"
find_file Makefile
open "/testbed/Makefile"
find_file requirements.txt
open "/testbed/requirements.txt"
mkdir -p dependencies

git clone https://github.com/pytest/pytest.git dependencies/pytest
curl -L -o dependencies/pytest.tar.gz https://github.com/pytest/pytest/archive/refs/tags/7.1.2.tar.gz
wget -O dependencies/pytest.tar.gz https://github.com/pytest/pytest/archive/refs/tags/7.1.2.tar.gz
insert 'import requests

url = '"'"'https://github.com/pytest/pytest/archive/refs/tags/7.1.2.tar.gz'"'"'
response = requests.get(url)

with open('"'"'dependencies/pytest.tar.gz'"'"', '"'"'wb'"'"') as f:
    f.write(response.content)
' 0
python3 requirements.txt
mkdir -p dependencies/sphinx
insert 'import requests

url = '"'"'https://github.com/sphinx-doc/sphinx/archive/refs/tags/4.2.0.tar.gz'"'"'
response = requests.get(url)

with open('"'"'dependencies/sphinx.tar.gz'"'"', '"'"'wb'"'"') as f:
    f.write(response.content)
' 0
insert 'import tarfile

# Extract pytest
with tarfile.open('"'"'dependencies/pytest.tar.gz'"'"', '"'"'r:gz'"'"') as tar:
    tar.extractall('"'"'dependencies/pytest'"'"')

# Extract sphinx
with tarfile.open('"'"'dependencies/sphinx.tar.gz'"'"', '"'"'r:gz'"'"') as tar:
    tar.extractall('"'"'dependencies/sphinx'"'"')
' 0
insert 'import os

# Install pytest
os.chdir('"'"'dependencies/pytest'"'"')
os.system('"'"'python setup.py install'"'"')

# Install sphinx
os.chdir('"'"'../sphinx'"'"')
os.system('"'"'python setup.py install'"'"')
' 0
insert 'import os

# Run tests
os.system('"'"'pytest'"'"')
' 0
python3 requirements.txt
python requirements.txt
create install_dependencies.sh
insert '#!/bin/bash

# Install pytest
cd dependencies/pytest
python setup.py install

# Install sphinx
cd ../sphinx
python setup.py install
' 0
chmod +x install_dependencies.sh
./install_dependencies.sh
create install_dependencies_git.sh
insert '#!/bin/bash

# Create dependencies directory
mkdir -p dependencies

# Clone pytest
git clone https://github.com/pytest/pytest.git dependencies/pytest

# Clone sphinx
git clone https://github.com/sphinx-doc/sphinx.git dependencies/sphinx

# Install pytest
cd dependencies/pytest
python setup.py install

# Install sphinx
cd ../sphinx
python setup.py install
' 0
chmod +x install_dependencies_git.sh
./install_dependencies_git.sh
create clone_dependencies.sh
insert '#!/bin/bash

# Create dependencies directory
mkdir -p dependencies

# Clone pytest
git clone https://github.com/pytest/pytest.git dependencies/pytest

# Clone sphinx
git clone https://github.com/sphinx-doc/sphinx.git dependencies/sphinx
' 0
chmod +x clone_dependencies.sh
./clone_dependencies.sh
create install_sphinx.sh
insert '#!/bin/bash

# Install sphinx
cd dependencies/sphinx
python setup.py install
' 0
chmod +x install_sphinx.sh
./install_sphinx.sh
create run_sphinx_tests.sh
insert '#!/bin/bash

# Run tests for sphinx
cd dependencies/sphinx
pytest
' 0
chmod +x run_sphinx_tests.sh
./run_sphinx_tests.sh
