ls -la
open "README.md"
find_file '*.yml' .github
find_file '*.yml' .azure-pipelines
open ".azure-pipelines/azure-pipelines.yml"
open "pyproject.toml"
open "requirements.txt"
apt-get update && apt-get install -y python3-dev build-essential
apt-get install -y python3-dev build-essential
apt-get install -y python3-pip
python3 --version
python3 -m venv venv
apt-get install -y python3.10-venv
python3 -m venv venv
source venv/bin/activate && pip install -r requirements.txt
pip install -e .
open "pyproject.toml"
edit 'requires-python = ">=3.12"' 'requires-python = ">=3.10"'
pip install -e .
open ".azure-pipelines/azure-pipelines.yml"
find_file '*.sh' .azure-pipelines

