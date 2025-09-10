ls -la
ls -la .github/workflows
open ".github/workflows/ci.yaml"
scroll_down
scroll_down
open "requirements_test.txt"
apt-get update && apt-get install -y build-essential python3-dev
python3 -m venv venv
apt-get install -y python3.10-venv
python3 -m venv venv
. venv/bin/activate && pip install -U -r requirements_test.txt
pytest --benchmark-disable --cov --cov-report= tests/
open "tests/test_self.py"
search_file test_do_not_import_files_from_local_directory_with_pythonpath tests/test_self.py
goto 988
