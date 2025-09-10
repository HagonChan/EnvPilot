ls -la
ls -la .github/workflows
open ".github/workflows/ci.yaml"
open "Makefile"
apt-get install -y python3.10 python3.10-venv python3.10-dev pandoc
python3.10 -m venv venv
source venv/bin/activate && pip install --upgrade pip
pip install -e .[dev,stats]
make test
apt-get install -y make
make test
open "setup.cfg"
open "pyproject.toml"
edit '"numpy>=1.17"' '"numpy==1.23.5"'
pip install -e .[dev,stats]
make test
edit '"matplotlib>=3.1,!=3.6.1"' '"matplotlib==3.6.0"'
edit '"pandas>=0.25"' '"pandas==1.5.3"'
pip install -e .[dev,stats]
make test
