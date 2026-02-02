ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
open "tox.ini"
which tox || pip install tox
apt-get update && apt-get install -y python3-pip
pip install tox
tox
