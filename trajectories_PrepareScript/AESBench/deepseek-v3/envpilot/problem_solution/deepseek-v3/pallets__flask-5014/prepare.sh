ls -la
ls -la .github/workflows
open ".github/workflows/tests.yaml"
open "tox.ini"
open "pyproject.toml"
pip install tox
apt-get update && apt-get install -y python3-pip
pip install tox
python3 --version
pypy3 --version
tox
ls -la .tox/py310/log
open "'.tox/py310/log/4-commands[0].log'"
ls -la .tox/py310/log/
open "'.tox/py310/log/4-commands[0].log'"
cat .tox/py310/log/4-commands[0].log
pip show werkzeug
pip install werkzeug
tox
cat .tox/style/log/style-*.log
ls -la .tox/style/log
cat .tox/style/log/1-commands[0].log
open "src/flask/cli.py"
goto 305
edit 're.split(r":(?![\\/])", self.app_import_path, 1)' 're.split(r":(?![\\/])", self.app_import_path, maxsplit=1)'
tox
cat .tox/typing/log/typing-*.log
ls -la .tox/typing/log
cat .tox/typing/log/2-commands[0].log
pip install --upgrade markupsafe
cat .tox/py310/log/4-commands[0].log
ls -la .tox/py310/log
cat .tox/py310/log/2-commands[0].log
pip show werkzeug
open "pyproject.toml"
pip install werkzeug==2.2.3
tox
cat .tox/py310/log/2-commands[0].log
python -c "import werkzeug; print(werkzeug.__version__); print(dir(werkzeug))"
python3 -c "import werkzeug; print(werkzeug.__version__); print(dir(werkzeug))"
open "tests/test_testing.py"
python3 -c "import sys; print(sys.path); import werkzeug; print(werkzeug.__version__)"
python3 -m pytest tests/test_testing.py::test_environ_base_default -v
pip install pytest
python3 -m pytest tests/test_testing.py::test_environ_base_default -v
pip install -e .
pip install .
python3 -m pytest tests/test_testing.py::test_environ_base_default -v
python3 -c "import flask; print(flask.__version__)"

