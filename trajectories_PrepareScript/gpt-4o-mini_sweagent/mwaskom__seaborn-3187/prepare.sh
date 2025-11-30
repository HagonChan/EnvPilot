
find_file '*.yml'
find_file '*.yaml'
open "/testbed/.github/workflows/ci.yaml"
find_file requirements.txt
find_file setup.py
find_file pyproject.toml
open "/testbed/pyproject.toml"
python3.10 -m venv venv
python3 -m venv venv
ls /usr/bin/python*
ls /usr/local/bin/python*
apt update
apt install python3 python3-venv python3-pip
apt install python3 python3-venv python3-pip -y
python3 -m venv venv
source venv/bin/activate
pip install .[dev]
make test
ls /usr/bin/python3.9
apt install python3.9
apt search python3.9
apt install software-properties-common
apt update
add-apt-repository ppa:deadsnakes/ppa
apt install software-properties-common -y
add-apt-repository ppa:deadsnakes/ppa -y
apt install python3.9 python3.9-venv python3.9-dev -y
python3.9 -m venv venv39
source venv39/bin/activate
pip install .[dev]
make test
ls /usr/bin/python3.8
apt install python3.8 python3.8-venv python3.8-dev -y
python3.8 -m venv venv38
source venv38/bin/activate
pip install .[dev]
make test
