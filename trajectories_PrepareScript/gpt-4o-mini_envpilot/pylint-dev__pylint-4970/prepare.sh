ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/ci.yaml"
python3 --version
apt-get update && apt-get install -y python3 python3-pip
python3 -m venv venv
apt-get install -y python3-venv
python3 -m venv venv
source venv/bin/activate && pip install -U -r requirements_test.txt
pytest
