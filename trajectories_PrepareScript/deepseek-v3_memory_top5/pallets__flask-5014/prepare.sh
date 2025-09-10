ls -la
ls -la .github/workflows
open ".github/workflows/tests.yaml"
apt-get install -y python3.11 python3.11-venv python3.11-dev
pip install -U wheel setuptools pip
apt-get install -y python3-pip
apt-get update
apt-get install -y python3-pip
python3 -m pip install -U wheel setuptools pip
python3 -m pip install -U tox
export PYTHONPATH=$PYTHONPATH:$(pwd)
tox
cat .tox/py311/log/py311-*.log
ls -la .tox/*/log/
cat .tox/py311/log/4-commands[0].log
open "pyproject.toml"
python3 -m pip install -U 'Werkzeug>=2.2.2'
python3 -c "import werkzeug; print(werkzeug.__version__)"
python3 -m pip install -U 'Werkzeug==2.2.2'
python3 -c "import werkzeug; print(werkzeug.__version__)"
tox
cat .tox/py311/log/4-commands[0].log
ls -la .tox/py311/log/
cat .tox/py311/log/2-commands[0].log
python3 -m pip install -U 'Werkzeug==2.2.2' --force-reinstall
python3 -c "import werkzeug; print(werkzeug.__version__)"
tox
cat .tox/py311/log/2-commands[0].log
apt-get install -y python3.10 python3.10-venv python3.10-dev && python3.10 -m venv venv
source venv/bin/activate && python -m pip install -U wheel setuptools pip && python -m pip install -U 'Werkzeug==2.2.2'
python -c "import werkzeug; print(werkzeug.__version__)"
tox
cat .tox/py311/log/2-commands[0].log
apt-get install -y python3.10 python3.10-venv python3.10-dev && python3.10 -m venv venv
source venv/bin/activate && python -m pip install -U wheel setuptools pip && python -m pip install -U 'Werkzeug==2.2.2'
python -c "import werkzeug; print(werkzeug.__version__)"
tox
cat .tox/py311/log/2-commands[0].log
apt-get install -y python3.10 python3.10-venv python3.10-dev && python3.10 -m venv venv
source venv/bin/activate && python -m pip install -U wheel setuptools pip && python -m pip install -U 'Werkzeug==2.2.2'
python -c "import werkzeug; print(werkzeug.__version__)"
tox
cat .tox/py311/log/2-commands[0].log
apt-get install -y python3.10 python3.10-venv python3.10-dev && python3.10 -m venv venv
source venv/bin/activate && python -m pip install -U wheel setuptools pip && python -m pip install -U 'Werkzeug==2.2.2'
python -c "import werkzeug; print(werkzeug.__version__)"
tox
cat .tox/py311/log/2-commands[0].log
apt-get install -y python3.10 python3.10-venv python3.10-dev && python3.10 -m venv venv

