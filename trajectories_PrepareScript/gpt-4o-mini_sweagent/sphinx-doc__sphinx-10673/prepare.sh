
find_file '*.yml' .
open ".github/workflows/main.yml"
open ".github/workflows/nodejs.yml"
apt-get install graphviz
apt-get update
apt-get install -y graphviz
python -m pip install -U pip tox
python3 --version
apt-get install -y python3 python3-dev python3-pip
python3 -m pip install -U pip tox
python3 -m venv venv
apt-get install -y python3-venv
python3 -m venv venv
source venv/bin/activate
tox
