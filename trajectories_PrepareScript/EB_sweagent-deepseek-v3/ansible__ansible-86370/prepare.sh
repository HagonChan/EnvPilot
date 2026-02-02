ls -la
ls -la .github/workflows/
ls -la .azure-pipelines/
open ".azure-pipelines/azure-pipelines.yml"
open ".azure-pipelines/commands/entry-point.sh"
open "pyproject.toml"
open "requirements.txt"
apt-get update
python -m pip install --upgrade pip
apt-get install -y python3.12 python3.12-venv python3.12-dev
apt-get install -y software-properties-common && add-apt-repository -y ppa:deadsnakes/ppa && apt-get update && apt-get install -y python3.12 python3.12-venv python3.12-dev
python3.12 -m pip install --upgrade pip
python3.12 -m ensurepip --upgrade
python3.12 -m pip install --upgrade pip
python3.12 -m venv /testbed/venv
source /testbed/venv/bin/activate
pip install -r requirements.txt
pip install -e .
open "README.md"
cat README.md
ls -la | grep -E 'Makefile|tox.ini'
ls -la test/ tests/
ls -la bin/ scripts/
ansible-test --help
ansible-test integration
ansible-test sanity
