ls -la
ls -la .github/workflows
ls -la .circleci
open ".circleci/config.yml"
open "pytest.ini"
ls -la requirements
ls -la requirements/testing
open "requirements/testing/travis_all.txt"
python3 -m venv .venv
ls /usr/bin/python*
apt-get update && apt-get install -y python3 python3-pip
python3 -m venv .venv
apt-get install -y python3.10-venv
python3 -m venv .venv
source .venv/bin/activate && pip install -r requirements/testing/travis_all.txt
pip install -e .
apt-get install -y libfreetype6-dev
pip install -e .
apt-get install -y pkg-config
pip install -e .
pytest
