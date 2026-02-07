ls -la
open "pytest.ini"
ls -la .github/workflows
ls -la .circleci
open ".circleci/config.yml"
ls -la requirements
ls -la requirements/testing
open "requirements/testing/travis_all.txt"
open "setup.py"
sudo apt-get update && sudo apt-get install -y libgeos-dev graphviz
apt-get update && apt-get install -y libgeos-dev graphviz
python -m pip install --upgrade pip setuptools wheel
python3 -m pip install --upgrade pip setuptools wheel
which python3.6 || which python3.7 || which python3.8 || which python3.9 || which python3.10
apt-get install -y python3.6
python3.10 --version
apt-get install -y python3.8
apt-get install -y python3 python3-pip python3-venv
python3 --version && python3 -m pip --version
python3 -m venv venv
source venv/bin/activate && python -m pip install --upgrade pip setuptools wheel
python -m pip install -r requirements/testing/travis_all.txt
python -m pip install -ve .
apt-get install -y libfreetype6-dev
python -m pip install -ve .
find /usr -name ft2build.h
export CPATH=/usr/include/freetype2 && python -m pip install -ve .
python -m pytest
