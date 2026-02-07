ls -la
ls -la .github/workflows
open ".github/workflows/tests.yaml"
open "tox.ini"
open "requirements/tests.txt"
pip install tox
apt update && apt install -y python3-pip
pip install tox
pip install -r requirements/tests.txt
pip install --upgrade tox
tox
cat .tox/py310/log/py310-*.log
tox -e py310 -v
pip show werkzeug
open "requirements/tests.txt"
open "requirements/tests.in"
open "pyproject.toml"
pip install werkzeug>=2.2.2
tox -e py310 -v
pip show werkzeug
pip uninstall werkzeug -y && pip install werkzeug>=2.2.2
tox -e py310 -v
cat .tox/py310/bin/python -c "import werkzeug; print(werkzeug.__version__)"
.tox/py310/bin/python -c "import werkzeug; print(werkzeug.__version__)"
tox -e py310 --recreate && .tox/py310/bin/python -m pip install --force-reinstall werkzeug>=2.2.2
cat .tox/py310/lib/python3.10/site-packages/werkzeug/__init__.py
.tox/py310/bin/python -m pip install --force-reinstall git+https://github.com/pallets/werkzeug.git
.tox/py310/bin/python -c "import werkzeug; print(werkzeug.__version__)"
cat .tox/py310/lib/python3.10/site-packages/werkzeug/__init__.py
.tox/py310/bin/python -m pip show werkzeug
.tox/py310/bin/python -m pip install werkzeug==3.1.5
.tox/py310/bin/python -c "import werkzeug; print(werkzeug.__version__)"
cat .tox/py310/lib/python3.10/site-packages/werkzeug/__init__.py
curl -s https://werkzeug.palletsprojects.com/en/3.1.x/changes/ | grep -A 5 "Version 3.1.5"
apt install -y curl
curl -s https://werkzeug.palletsprojects.com/en/3.1.x/changes/ | grep -A 5 "Version 3.1.5"
ls -la .tox/py310/lib/python3.10/site-packages/werkzeug/
.tox/py310/bin/python -m pip show werkzeug
