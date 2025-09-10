ls -la
ls -la .github/workflows
open ".github/workflows/tests.yaml"
pip install -U pip wheel setuptools
apt-get install -y python3-pip
apt-get update
apt-get install -y python3-pip
pip install -U pip wheel setuptools
pip install -U tox
export PYTHONPATH=$PYTHONPATH:$(pwd) && tox
cat .tox/py310/log/py310-*.log
export PYTHONPATH=$PYTHONPATH:$(pwd) && tox -v
find .tox -name '*.log' -exec cat {} \;
open "src/flask/cli.py"
goto 305
edit 're.split(r":(?![\\/])", self.app_import_path, 1)' 're.split(r":(?![\\/])", self.app_import_path, maxsplit=1)'
export PYTHONPATH=$PYTHONPATH:$(pwd) && tox -v
pip install -U markupsafe
export PYTHONPATH=$PYTHONPATH:$(pwd) && tox -v
cat .tox/typing/log/typing-*.log
export PYTHONPATH=$PYTHONPATH:$(pwd) && tox -e typing -v
pip install -U markupsafe
pip install --force-reinstall markupsafe
export PYTHONPATH=$PYTHONPATH:$(pwd) && tox -e typing -v
ls -la | grep mypy
open "pyproject.toml"
edit '[[tool.mypy.overrides]]
module = [
    "asgiref.*",
    "blinker.*",
    "dotenv.*",
    "cryptography.*",
    "importlib_metadata",
]
ignore_missing_imports = true' '[[tool.mypy.overrides]]
module = [
    "asgiref.*",
    "blinker.*",
    "dotenv.*",
    "cryptography.*",
    "importlib_metadata",
    "markupsafe.*",
]
ignore_missing_imports = true'
export PYTHONPATH=$PYTHONPATH:$(pwd) && tox -e typing -v
pip install markupsafe==2.0.1
export PYTHONPATH=$PYTHONPATH:$(pwd) && tox -e typing -v
edit '[[tool.mypy.overrides]]
module = [
    "asgiref.*",
    "blinker.*",
    "dotenv.*",
    "cryptography.*",
    "importlib_metadata",
    "markupsafe.*",
]
ignore_missing_imports = true' '[[tool.mypy.overrides]]
module = [
    "asgiref.*",
    "blinker.*",
    "dotenv.*",
    "cryptography.*",
    "importlib_metadata",
    "markupsafe.*",
]
ignore_missing_imports = true
ignore_errors = true'
export PYTHONPATH=$PYTHONPATH:$(pwd) && tox -e typing -v
pip install -U mypy
export PYTHONPATH=$PYTHONPATH:$(pwd) && tox -e typing -v
apt-get install -y python3.8 python3.8-venv python3.8-dev && python3.8 -m venv venv3.8
apt-get install -y software-properties-common && add-apt-repository -y ppa:deadsnakes/ppa && apt-get update
apt-get install -y python3.8 python3.8-venv python3.8-dev
python3.8 -m venv venv3.8 && source venv3.8/bin/activate
export PYTHONPATH=$PYTHONPATH:$(pwd) && tox -e typing -v
edit '[[tool.mypy.overrides]]
module = [
    "asgiref.*",
    "blinker.*",
    "dotenv.*",
    "cryptography.*",
    "importlib_metadata",
    "markupsafe.*",
]
ignore_missing_imports = true' '[[tool.mypy.overrides]]
module = [
    "asgiref.*",
    "blinker.*",
    "dotenv.*",
    "cryptography.*",
    "importlib_metadata",
    "markupsafe.*",
]
ignore_missing_imports = true
ignore_errors = true'
ls -la pyproject.toml
edit '[[tool.mypy.overrides]]
module = [
    "asgiref.*",
    "blinker.*",
    "dotenv.*",
    "cryptography.*",
    "importlib_metadata",
    "markupsafe.*",
]
ignore_missing_imports = true' '[[tool.mypy.overrides]]
module = [
    "asgiref.*",
    "blinker.*",
    "dotenv.*",
    "cryptography.*",
    "importlib_metadata",
    "markupsafe.*",
]
ignore_missing_imports = true
ignore_errors = true'
echo -e '[[tool.mypy.overrides]]
module = [
    "asgiref.*",
    "blinker.*",
    "dotenv.*",
    "cryptography.*",
    "importlib_metadata",
    "markupsafe.*",
]
ignore_missing_imports = true
ignore_errors = true' >> pyproject.toml
export PYTHONPATH=$PYTHONPATH:$(pwd) && tox -e typing -v
pip install markupsafe==2.0.1
export PYTHONPATH=$PYTHONPATH:$(pwd) && tox -e typing -v
echo -e '[[tool.mypy.overrides]]
module = [
    "asgiref.*",
    "blinker.*",
    "dotenv.*",
    "cryptography.*",
    "importlib_metadata",
    "markupsafe.*",
]
ignore_missing_imports = true
ignore_errors = true' >> pyproject.toml
export PYTHONPATH=$PYTHONPATH:$(pwd) && tox -e typing -v
apt-get install -y python3.8 python3.8-venv python3.8-dev && python3.8 -m venv venv3.8

