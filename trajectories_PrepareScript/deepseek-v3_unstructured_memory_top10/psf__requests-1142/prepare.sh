ls -la
open ".travis.yml"
open "Makefile"
open "requirements.txt"
python --version
python3 --version
apt-get update && apt-get install -y python3.3 python3.3-dev
apt-get install -y python3.2 python3.2-dev
apt-get install -y python2.7 python2.7-dev
python2.7 --version
python2.7 -m ensurepip --upgrade
apt-get install -y python-pip
python2.7 -m pip install -r requirements.txt
make test
