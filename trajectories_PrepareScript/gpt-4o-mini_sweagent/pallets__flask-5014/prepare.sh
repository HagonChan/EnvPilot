find_file '*.yml' .github/workflows
find_file '*.yaml' .github/workflows
open ".github/workflows/tests.yaml"
find_file requirements.txt
open "examples/celery/requirements.txt"
apt update
apt install -y tox
pip install -r examples/celery/requirements.txt
python3.11 -m venv venv
apt install -y python3.11
python3.11 -m venv venv
apt install -y python3.11-venv
python3.11 -m venv venv
source venv/bin/activate
pip install -r examples/celery/requirements.txt
pip install --upgrade pip
pip install --trusted-host pypi.org --trusted-host pypi.python.org --trusted-host files.pythonhosted.org -r examples/celery/requirements.txt
find_file setup.py
find_file pyproject.toml
open "pyproject.toml"
pip install pytest
pip install --trusted-host pypi.org --trusted-host pypi.python.org --trusted-host files.pythonhosted.org pytest
search_dir test
search_dir test /testbed
search_dir 'test_*' /testbed
find_file tests .
search_dir test examples
pytest examples/tutorial/tests
create run_tests.py
open "run_tests.py"
insert 'import pytest
import sys

if __name__ == "__main__":
    sys.exit(pytest.main(["examples/tutorial/tests"]))'
python run_tests.py
