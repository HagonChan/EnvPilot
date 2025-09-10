ls -la
ls -la .github/workflows
open ".github/workflows/tests.yaml"
pip install tox
which python3.11 || which python3.10 || which python3.9 || which python3.8 || which python3.7
apt-get update && apt-get install -y python3.11 python3.11-dev python3-pip
python3.11 --version && pip --version
python3.11 -m pip install -U pip wheel setuptools
python3.11 -m pip install tox
tox --version
python3.11 -m pip install -e .
tox
cat .tox/py311/log/py311-*.log
tox -v
cat .tox/py311/log/py311-*.log
python3.11 -m pytest -v --tb=short tests
python3.11 -m pip install pytest
python3.11 -m pytest -v --tb=short tests
python3.11 -m pip install werkzeug
open "pyproject.toml"
python3.11 -m pip install werkzeug==2.2.2
python3.11 -m pytest -v --tb=short tests
python3.11 -m pip show click
python3.11 -m pip install --upgrade click
open "tests/test_cli.py"
python3.11 -m pip install --pre click
python3.11 -m pip install click==8.3.0
edit 'CliRunner(mix_stderr=False)' 'CliRunner()' True
python3.11 -m pytest -v --tb=short tests
