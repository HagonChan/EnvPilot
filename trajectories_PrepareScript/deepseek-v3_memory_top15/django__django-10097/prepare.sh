ls -la
open "README.rst"
open "docs/internals/contributing/writing-code/unit-tests.txt"
python3 --version && pip --version
apt-get update && apt-get install -y python3 python3-pip
python3 --version && pip --version
python3 -m venv .venv && source .venv/bin/activate
apt-get install -y python3.10-venv
python3 -m venv .venv && source .venv/bin/activate
pip install -e . && pip install -r requirements/py3.txt
ls -la requirements/
ls -la
open "tox.ini"
pip install -r tests/requirements/py3.txt
cd tests && python runtests.py
python runtests.py --parallel=1
