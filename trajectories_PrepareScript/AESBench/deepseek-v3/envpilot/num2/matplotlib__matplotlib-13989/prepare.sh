ls -la
ls -la .github/workflows
ls -la .circleci
open ".circleci/config.yml"
open "README.rst"
open "INSTALL.rst"
open "setup.py"
apt-get update && apt-get install -y libgeos-dev graphviz
python -m pip install --upgrade pip setuptools wheel
apt-get install -y python3 python3-pip
python3 -m pip install --upgrade pip setuptools wheel
python3 -m pip install numpy
python3 -m pip install -ve .
apt-get install -y libfreetype6-dev
python3 -m pip install -ve .
find /usr -name ft2build.h
CPATH=/usr/include/freetype2 python3 -m pip install -ve .
python3 -m pytest
python3 -m pip install pytest
python3 -m pytest
