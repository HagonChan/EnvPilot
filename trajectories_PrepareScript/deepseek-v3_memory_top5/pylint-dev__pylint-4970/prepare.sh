ls -la
ls -la .github/workflows
open ".github/workflows/ci.yaml"
open "requirements_test.txt"
apt-get update && apt-get install -y build-essential python3-dev
apt-get install -y python3.6 python3.6-venv python3.6-dev
apt-get install -y python3.8 python3.8-venv python3.8-dev
apt-get install -y python3.9 python3.9-venv python3.9-dev
python3 -m venv venv
apt-get install -y python3.10-venv
python3 -m venv venv
source venv/bin/activate && pip install -U -r requirements_test.txt
pytest
open "tests/test_self.py"
search_file test_do_not_import_files_from_local_directory_with_pythonpath tests/test_self.py
goto 988
