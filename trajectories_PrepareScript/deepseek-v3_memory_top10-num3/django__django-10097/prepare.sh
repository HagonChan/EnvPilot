ls -la
open "README.rst"
open "docs/intro/install.txt"
open "docs/internals/contributing/writing-code/unit-tests.txt"
apt-get update && apt-get install -y python3-dev build-essential
python3 -m venv .venv
apt-get install -y python3.10-venv
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
ls -la
pip install -e .
ls -la requirements/
open "tox.ini"
ls -la tests/requirements/
pip install -r tests/requirements/py3.txt
./runtests.py
cd tests && ./runtests.py
./runtests.py --parallel=1
