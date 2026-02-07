ls -la
open ".travis.yml"
open "Makefile"
make test-deps
apt-get update && apt-get install -y make
make test-deps
apt-get install -y python3-pip
make test-deps
make test
open "setup.py"
apt-get install -y python3.3 python3.3-venv
apt-get install -y python3.2 python3.2-venv
apt-get install -y python3.7 python3.7-venv
apt-get install -y python3.8 python3.8-venv
apt-get install -y python3.9 python3.9-venv
apt-get install -y python3.10 python3.10-venv
python3.10 -m venv venv
source venv/bin/activate
make test-deps
make test
