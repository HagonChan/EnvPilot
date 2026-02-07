ls -la
ls -la .github/workflows
open ".github/workflows/ci.yaml"
open "requirements_test.txt"
open "setup.py"
open "tox.ini"
python -m venv venv
ls /usr/bin/python*
apt-get update && apt-get install -y python3 python3-venv
python3 -m venv venv
source venv/bin/activate
pip install -e .
pip install -r requirements_test.txt
pytest
open "tests/test_self.py"
search_file test_do_not_import_files_from_local_directory_with_pythonpath tests/test_self.py
goto 988
pytest tests/test_self.py::TestRunTC::test_do_not_import_files_from_local_directory_with_pythonpath -v
mkdir -p /tmp/test_pylint && cd /tmp/test_pylint && echo "'Docstring'
import completely_unknown
" > astroid.py && echo "'Docstring'
import completely_unknown
" > hmac.py && PYTHONPATH="$(python3 -c 'import sys; print(":".join(sys.path))'):" python3 -m pylint astroid.py --disable=import-error,unused-import
pytest
cd /testbed && pytest
