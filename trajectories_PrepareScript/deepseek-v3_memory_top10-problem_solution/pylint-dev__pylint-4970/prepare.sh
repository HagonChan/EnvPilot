ls -la
ls -la .github/workflows
open ".github/workflows/ci.yaml"
goto 200
apt-get update && apt-get install -y python3-venv python3-pip python3-setuptools python3-wheel
python3 -m venv venv
. venv/bin/activate && pip install -U -r requirements_test.txt
pip install -e .
pytest --benchmark-disable --cov --cov-report= tests/
open "tests/test_self.py"
goto 500
goto 800
goto 1000
PYTHONPATH= pytest --benchmark-disable --cov --cov-report= tests/test_self.py::TestRunTC::test_do_not_import_files_from_local_directory_with_pythonpath
PYTHONPATH= pytest --benchmark-disable --cov --cov-report= tests/
