ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
open ".github/workflows/python_matrix.yml"
apt-get update && apt-get install -y libmemcached-dev
python3.14 --version || apt-get install -y python3.14
open "pyproject.toml"
apt-get update && apt-get install -y python3.12 python3.12-venv python3.12-dev
python3 --version
apt-get update && apt-get install -y python3 python3-pip python3-venv
python3 --version
python3 -m venv .venv && . .venv/bin/activate && pip install -U pip && pip install -r tests/requirements/py3.txt -e .
open "django/__init__.py"
open "django/utils/version.py"
edit 'tz = datetime.UTC' 'tz = datetime.timezone.utc'
. .venv/bin/activate && pip install -r tests/requirements/py3.txt -e .
apt-get update && apt-get install -y software-properties-common && add-apt-repository -y ppa:deadsnakes/ppa && apt-get update && apt-get install -y python3.12 python3.12-venv python3.12-dev
python3.12 -m venv .venv && . .venv/bin/activate && pip install -U pip && pip install -r tests/requirements/py3.txt -e .
. .venv/bin/activate && python -Wall tests/runtests.py -v2
. .venv/bin/activate && pip list | grep asgiref
. .venv/bin/activate && which python
. .venv/bin/activate && pip install --force-reinstall asgiref
. .venv/bin/activate && python -Wall tests/runtests.py -v2
. .venv/bin/activate && python -c "import sys; print(sys.path)"
rm -rf .venv && python3.12 -m venv .venv && . .venv/bin/activate && pip install -U pip && pip install -r tests/requirements/py3.txt -e .

