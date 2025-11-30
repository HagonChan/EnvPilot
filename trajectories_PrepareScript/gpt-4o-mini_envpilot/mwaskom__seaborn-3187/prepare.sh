ls -R
ls ci
open "setup.cfg"
open "README.md"
apt-get update && apt-get install -y python3-dev build-essential cython3
apt-get update && apt-get install -y python3-dev build-essential cython3
apt-get install -y python3-dev build-essential cython3
pip install seaborn[stats,docs,dev]
apt-get install -y python3-pip
pip install seaborn[stats,docs,dev]
make test
