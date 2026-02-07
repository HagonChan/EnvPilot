ls -la
ls -la .github/workflows
open ".github/workflows/ci.yaml"
open "requirements_test.txt"
open "requirements_test_min.txt"
python3 -m venv .venv
apt-get update && apt-get install -y python3 python3-venv python3-pip python3-setuptools python3-wheel
python3 -m venv .venv
source .venv/bin/activate && pip install -U -r requirements_test.txt
source .venv/bin/activate && pytest
open "tests/test_self.py"
search_file test_do_not_import_files_from_local_directory_with_pythonpath tests/test_self.py
goto 988
source .venv/bin/activate && python -m pytest tests/test_self.py::TestRunTC::test_do_not_import_files_from_local_directory_with_pythonpath -v
