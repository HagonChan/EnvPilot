ls -la
open "README.rst"
open "docs/internals/contributing/writing-code/unit-tests.txt"
python3 -m venv venv
apt-get update && apt-get install -y python3 python3-pip
python3 -m venv venv
apt-get install -y python3.10-venv
python3 -m venv venv
source venv/bin/activate
pip install -e .
pip install -r requirements/py3.txt
find . -name "requirements*.txt"
open "tox.ini"
ls tests/requirements
pip install -r tests/requirements/py3.txt
cd tests && ./runtests.py
./runtests.py --parallel=1
