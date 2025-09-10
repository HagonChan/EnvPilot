ls -la
ls -la .github/workflows
open ".github/workflows/tests.yaml"
python3.11 --version
apt-get update && apt-get install -y python3.11 python3.11-venv
python3.11 --version
pip install tox
python3.11 -m ensurepip --upgrade
apt-get install -y python3-pip
pip --version
python3.11 -m pip --version
python3.11 -m pip install tox
tox --version
tox -e py311
open "requirements/tests.txt"
open "pyproject.toml"
open "tox.ini"
edit 'deps =
    -r requirements/tests.txt
    min: -r requirements/tests-pallets-min.txt
    dev: https://github.com/pallets/werkzeug/archive/refs/heads/main.tar.gz
    dev: https://github.com/pallets/jinja/archive/refs/heads/main.tar.gz
    dev: https://github.com/pallets/markupsafe/archive/refs/heads/main.tar.gz
    dev: https://github.com/pallets/itsdangerous/archive/refs/heads/main.tar.gz
    dev: https://github.com/pallets/click/archive/refs/heads/main.tar.gz' 'deps =
    -r requirements/tests.txt
    werkzeug>=2.2.2
    min: -r requirements/tests-pallets-min.txt
    dev: https://github.com/pallets/werkzeug/archive/refs/heads/main.tar.gz
    dev: https://github.com/pallets/jinja/archive/refs/heads/main.tar.gz
    dev: https://github.com/pallets/markupsafe/archive/refs/heads/main.tar.gz
    dev: https://github.com/pallets/itsdangerous/archive/refs/heads/main.tar.gz
    dev: https://github.com/pallets/click/archive/refs/heads/main.tar.gz'
tox -e py311
python3.11 -m pip install werkzeug==2.2.2
python3.11 -c "import werkzeug; print(werkzeug.__version__)"
edit 'deps =
    -r requirements/tests.txt
    werkzeug>=2.2.2
    min: -r requirements/tests-pallets-min.txt
    dev: https://github.com/pallets/werkzeug/archive/refs/heads/main.tar.gz
    dev: https://github.com/pallets/jinja/archive/refs/heads/main.tar.gz
    dev: https://github.com/pallets/markupsafe/archive/refs/heads/main.tar.gz
    dev: https://github.com/pallets/itsdangerous/archive/refs/heads/main.tar.gz
    dev: https://github.com/pallets/click/archive/refs/heads/main.tar.gz' 'deps =
    -r requirements/tests.txt
    werkzeug==2.2.2
    min: -r requirements/tests-pallets-min.txt
    dev: https://github.com/pallets/werkzeug/archive/refs/heads/main.tar.gz
    dev: https://github.com/pallets/jinja/archive/refs/heads/main.tar.gz
    dev: https://github.com/pallets/markupsafe/archive/refs/heads/main.tar.gz
    dev: https://github.com/pallets/itsdangerous/archive/refs/heads/main.tar.gz
    dev: https://github.com/pallets/click/archive/refs/heads/main.tar.gz'
tox -e py311
open "requirements/tests.txt"
open "pyproject.toml"
edit 'deps =
    -r requirements/tests.txt
    werkzeug==2.2.2
    min: -r requirements/tests-pallets-min.txt
    dev: https://github.com/pallets/werkzeug/archive/refs/heads/main.tar.gz
    dev: https://github.com/pallets/jinja/archive/refs/heads/main.tar.gz
    dev: https://github.com/pallets/markupsafe/archive/refs/heads/main.tar.gz
    dev: https://github.com/pallets/itsdangerous/archive/refs/heads/main.tar.gz
    dev: https://github.com/pallets/click/archive/refs/heads/main.tar.gz' 'deps =
    -r requirements/tests.txt
    werkzeug==2.2.2
    click==8.0.0
    min: -r requirements/tests-pallets-min.txt
    dev: https://github.com/pallets/werkzeug/archive/refs/heads/main.tar.gz
    dev: https://github.com/pallets/jinja/archive/refs/heads/main.tar.gz
    dev: https://github.com/pallets/markupsafe/archive/refs/heads/main.tar.gz
    dev: https://github.com/pallets/itsdangerous/archive/refs/heads/main.tar.gz
    dev: https://github.com/pallets/click/archive/refs/heads/main.tar.gz'
open "tox.ini"
edit 'deps =
    -r requirements/tests.txt
    werkzeug==2.2.2
    min: -r requirements/tests-pallets-min.txt
    dev: https://github.com/pallets/werkzeug/archive/refs/heads/main.tar.gz
    dev: https://github.com/pallets/jinja/archive/refs/heads/main.tar.gz
    dev: https://github.com/pallets/markupsafe/archive/refs/heads/main.tar.gz
    dev: https://github.com/pallets/itsdangerous/archive/refs/heads/main.tar.gz
    dev: https://github.com/pallets/click/archive/refs/heads/main.tar.gz' 'deps =
    -r requirements/tests.txt
    werkzeug==2.2.2
    click==8.0.0
    min: -r requirements/tests-pallets-min.txt
    dev: https://github.com/pallets/werkzeug/archive/refs/heads/main.tar.gz
    dev: https://github.com/pallets/jinja/archive/refs/heads/main.tar.gz
    dev: https://github.com/pallets/markupsafe/archive/refs/heads/main.tar.gz
    dev: https://github.com/pallets/itsdangerous/archive/refs/heads/main.tar.gz
    dev: https://github.com/pallets/click/archive/refs/heads/main.tar.gz'
tox -e py311
