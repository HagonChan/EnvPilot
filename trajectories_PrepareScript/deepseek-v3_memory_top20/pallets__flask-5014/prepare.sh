ls -la
ls -la .github/workflows
open ".github/workflows/tests.yaml"
apt-get update && apt-get install -y python3 python3-pip
python3 -m pip install -U pip wheel setuptools
python3 -m pip install tox
open "tox.ini"
tox run -e py311
apt-get install -y python3.11 python3.11-dev python3.11-venv
tox run -e py311
python3.11 -m pip install --force-reinstall werkzeug>=2.2.2
tox run -e py311
open "requirements/tests.txt"
open "pyproject.toml"
python3.11 -m pip install werkzeug==2.2.2
tox run -e py311
python3.11 -m venv venv && source venv/bin/activate && python -m pip install -U pip wheel setuptools && python -m pip install tox werkzeug==2.2.2
source venv/bin/activate && tox run -e py311
source venv/bin/activate && python -c "import werkzeug; print(dir(werkzeug))"
open "tests/test_testing.py"
source venv/bin/activate && tox run -e py311 --installpkg werkzeug==2.2.2
open "tox.ini"
open "requirements/tests.txt"
open "requirements/tests.in"
edit 'pytest
asgiref
blinker
greenlet ; python_version < "3.11"
python-dotenv>=1; python_version >= "3.8"' 'pytest
asgiref
blinker
greenlet ; python_version < "3.11"
python-dotenv>=1; python_version >= "3.8"
werkzeug==2.2.2'
source venv/bin/activate && pip install pip-tools && pip-compile-multi
source venv/bin/activate && pip install pip-compile-multi && pip-compile-multi
source venv/bin/activate && pip-compile requirements/tests.in --output-file requirements/tests.txt
source venv/bin/activate && tox run -e py311
open "requirements/tests.txt"
edit 'pytest
asgiref
blinker
greenlet ; python_version < "3.11"
python-dotenv>=1; python_version >= "3.8"
werkzeug==2.2.2' 'pytest
asgiref
blinker
greenlet ; python_version < "3.11"
python-dotenv>=1; python_version >= "3.8"
werkzeug==2.2.2
click>=8.0'
open "requirements/tests.in"
edit 'pytest
asgiref
blinker
greenlet ; python_version < "3.11"
python-dotenv>=1; python_version >= "3.8"
werkzeug==2.2.2' 'pytest
asgiref
blinker
greenlet ; python_version < "3.11"
python-dotenv>=1; python_version >= "3.8"
werkzeug==2.2.2
click>=8.0'
source venv/bin/activate && pip-compile requirements/tests.in --output-file requirements/tests.txt
source venv/bin/activate && python -m pip install click>=8.0 && pip-compile requirements/tests.in --output-file requirements/tests.txt
source venv/bin/activate && python -m pip install click>=8.0 && python -m pytest
source venv/bin/activate && python -m pip install pytest && python -m pytest
source venv/bin/activate && python -m pip install --trusted-host pypi.org --trusted-host files.pythonhosted.org pytest
