ls -la
ls -la .github/workflows
open ".github/workflows/ci.yaml"
open "Makefile"
apt-get install -y pandoc
apt-get install -y python3.10 python3.10-venv
python3.10 -m venv venv
source venv/bin/activate && pip install --upgrade pip
pip install -e . && pip install seaborn[stats,docs,dev]
make test
apt-get install -y make
make test
