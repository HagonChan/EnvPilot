ls -la
ls -la .github/workflows
open ".github/workflows/ci.yaml"
open "requirements_test.txt"
open "setup.py"
open "tox.ini"
python3.6 -m venv venv
python3 --version
apt-get update && apt-get install -y python3.6 python3.6-venv
add-apt-repository ppa:deadsnakes/ppa -y && apt-get update && apt-get install -y python3.6 python3.6-venv
apt-get install -y software-properties-common
add-apt-repository ppa:deadsnakes/ppa -y && apt-get update && apt-get install -y python3.6 python3.6-venv
open "tox.ini"
apt-get install -y python3.7 python3.7-venv
python3.7 -m venv venv
source venv/bin/activate && pip install -r requirements_test.txt
pytest --benchmark-disable tests/
