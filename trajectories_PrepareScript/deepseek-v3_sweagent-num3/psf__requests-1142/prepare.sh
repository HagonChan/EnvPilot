ls -la
open ".travis.yml"
open "Makefile"
open "requirements.txt"
make test-deps
apt-get update && apt-get install -y make
make test-deps
apt-get install -y python3-pip
make test-deps
make test
open "setup.py"
find_file HISTORY.rst
open "HISTORY.rst"
find_file tox.ini
open "README.rst"
python3 --version
apt-get install -y python3.7
apt-get install -y python3.8
