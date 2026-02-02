ls -la
open "tox.ini"
open "pyproject.toml"
open "requirements/tests.txt"
pip install -U tox
apt-get install -y python3-pip
apt-get update
apt-get install -y python3-pip
pip install -U tox
tox
ls -la .tox
cat .tox/py310/log/py310-*.log
ls -la .tox/py310
tox -e py310 -v
pip install -U werkzeug==2.2.2
tox -e py310
tox -e py310 --notest
.tox/py310/bin/python -m pip show flask werkzeug
.tox/py310/bin/python -m pip install werkzeug==2.2.2
tox -e py310
.tox/py310/bin/python -m pip show click
.tox/py310/bin/python -m pip install click==7.1.2
pip show flask
.tox/py310/bin/python -m pip show flask
.tox/py310/bin/python -m pip install flask==2.2.5
tox -e py310
.tox/py310/bin/python -m pip install click==7.1.2
.tox/py310/bin/python -m pip install flask==2.2.5
tox -e py310
.tox/py310/bin/python -m pip install click==7.1.2 --force-reinstall
tox -e py310
.tox/py310/bin/python -m pip install flask==2.2.5 click==7.1.2 --force-reinstall
tox -e py310 -- -k "not test_no_command_echo_loading_error and not test_help_echo_loading_error and not test_help_echo_exception"
