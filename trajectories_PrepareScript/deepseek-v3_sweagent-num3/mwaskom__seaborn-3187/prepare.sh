ls -la
ls -la .github/workflows
open ".github/workflows/ci.yaml"
open "Makefile"
python3.10 --version
sudo apt-get update && sudo apt-get install -y python3.10 python3.10-dev python3.10-venv
apt-get update && apt-get install -y python3.10 python3.10-dev python3.10-venv
python3.10 -m venv venv
source venv/bin/activate
pip install -e .[stats,docs]
make test
apt-get install -y make
make test
pip install pytest pytest-cov
make test
pip install pytest-xdist
make test
