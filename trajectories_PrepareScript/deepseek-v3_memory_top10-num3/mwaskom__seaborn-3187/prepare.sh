ls -la
ls -la .github/workflows
open ".github/workflows/ci.yaml"
open "Makefile"
apt-get update && apt-get install -y pandoc
python3.10 -m venv venv && source venv/bin/activate && pip install --upgrade pip wheel
apt-get install -y python3.10 python3.10-venv python3.10-dev
python3.10 -m venv venv && source venv/bin/activate && pip install --upgrade pip wheel
pip install .[stats,docs,dev]
make test
apt-get install -y make
make test
