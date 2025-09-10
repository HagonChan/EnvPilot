ls -la
open "README.rst"
open "docs/intro/install.txt"
open "docs/internals/contributing/writing-code/unit-tests.txt"
python --version
apt-get update && apt-get install -y python3
python3 --version
python3 -m venv venv && source venv/bin/activate
apt-get install -y python3.10-venv
python3 -m venv venv && source venv/bin/activate
pip install -e .
pip install -r requirements/py3.txt
ls -la requirements/
ls -la tests/
cd tests && python runtests.py
pip install tblib
python runtests.py
python runtests.py --parallel=1
