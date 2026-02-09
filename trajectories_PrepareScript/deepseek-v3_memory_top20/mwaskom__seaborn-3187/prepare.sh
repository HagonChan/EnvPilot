ls -la
ls -la .github/workflows
open ".github/workflows/ci.yaml"
open "Makefile"
apt-get update && apt-get install -y pandoc python3-dev build-essential
pip install --upgrade pip && pip install .[stats,docs,dev]
apt-get install -y python3-pip
pip install --upgrade pip && pip install .[stats,docs,dev]
make test
