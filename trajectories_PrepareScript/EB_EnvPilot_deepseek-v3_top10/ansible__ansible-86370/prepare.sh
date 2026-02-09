ls -la
ls -la .github/workflows
ls -la .azure-pipelines
open ".azure-pipelines/azure-pipelines.yml"
open "requirements.txt"
open "pyproject.toml"
python -m venv venv
apt-get update && apt-get install -y python3.12 python3.12-venv
add-apt-repository ppa:deadsnakes/ppa -y && apt-get update && apt-get install -y python3.12 python3.12-venv
apt-get install -y software-properties-common
add-apt-repository ppa:deadsnakes/ppa -y && apt-get update && apt-get install -y python3.12 python3.12-venv
python3.12 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
pip install -e .
open ".azure-pipelines/azure-pipelines.yml"
cat .azure-pipelines/azure-pipelines.yml
ls -la
open "Makefile"
ls -la test
ls -la test/units
open "test/units/requirements.txt"
cat test/units/requirements.txt
pip install -r test/units/requirements.txt
cd test/units && pytest
pip install pytest
cd test/units && pytest
pwd
pytest
pip install pytest-mock
pytest
