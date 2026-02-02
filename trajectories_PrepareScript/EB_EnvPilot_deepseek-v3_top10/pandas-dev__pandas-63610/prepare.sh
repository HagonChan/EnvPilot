ls -la
ls -la .github/workflows
open ".github/workflows/unit-tests.yml"
open "setup.py"
open "requirements-dev.txt"
apt-get update && apt-get install -y build-essential python3-dev libegl1 libopengl0 gcc g++ make
pip install -r requirements-dev.txt
apt-get install -y python3-pip
pip install -r requirements-dev.txt
pip install -r requirements-dev.txt
pip install .
apt-get install -y python3.11 python3.11-dev python3.11-venv
python3.11 -m venv .venv

