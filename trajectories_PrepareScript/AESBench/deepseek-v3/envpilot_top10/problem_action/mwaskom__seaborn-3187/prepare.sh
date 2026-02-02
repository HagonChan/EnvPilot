ls -la
ls -la .github/workflows
open ".github/workflows/ci.yaml"
open "Makefile"
apt-get update && apt-get install -y pandoc python3-dev build-essential
pip install --upgrade pip wheel && pip install .[dev,stats]
apt-get install -y python3-pip
python3 -m pip install --upgrade pip wheel && python3 -m pip install .[dev,stats]
make test
