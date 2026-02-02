ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
sudo apt-get install -y graphviz
apt-get install -y graphviz
python -m pip install -U pip tox
python3 -m pip install -U pip tox
apt-get install -y python3 python3-pip
python3 -m pip install -U pip tox
tox
open "tox.ini"
tox -e flake8
tox -e mypy
tox -e docs
