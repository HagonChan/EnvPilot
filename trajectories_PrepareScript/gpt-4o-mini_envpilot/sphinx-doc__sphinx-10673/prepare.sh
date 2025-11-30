
ls -R
open "tox.ini"
open "setup.py"
apt-get update && apt-get install -y python3 python3-dev build-essential python3-pip
pip install -U tox
python3 -m venv venv
apt-get install -y python3.10-venv
python3 -m venv venv
source venv/bin/activate
pip install -e .
export PYTHONPATH=$PYTHONPATH:$(pwd)
tox
