ls -la
ls -la .github/workflows
open ".github/workflows/ci.yaml"
open "requirements_test.txt"
open "tox.ini"
apt-get update && apt-get install -y python3 python3-pip
pip install -U tox
pip install -U -r requirements_test.txt
pip install -U tomli>=2.3
tox
cat .tox/formatting/log/formatting-0.log
tox -e formatting -v
cat .tox/py310/log/py310-0.log
tox -e py310 -v
