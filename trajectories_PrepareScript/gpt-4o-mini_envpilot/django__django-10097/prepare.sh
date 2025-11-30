ls -la
open "setup.py"
apt-get update && apt-get install -y python3-dev build-essential
python3 -m venv venv
apt-get install -y python3.10-venv
python3 -m venv venv
source venv/bin/activate
pip install .
open "tox.ini"
ls -la tests
open "README.rst"
python tests/runtests.py
pip install tblib
python tests/runtests.py
python tests/runtests.py --no-parallel
python tests/runtests.py
python tests/runtests.py --parallel 1

