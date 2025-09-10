ls -la
ls -la .github/workflows
open ".github/workflows/ci.yaml"
open "Makefile"
apt-get install -y make pandoc
apt-get update && apt-get install -y make pandoc
python3 --version
apt-get install -y python3.7
apt-get install -y python3.8
apt-cache search python3 | grep '^python3'
apt-get install -y python3.11 python3.11-venv python3.11-dev
python3.11 --version && python3.11 -m pip --version
python3.11 -m ensurepip --upgrade
apt-get install -y python3-pip
python3.11 -m pip --version
python3.11 -m venv venv
source venv/bin/activate
ls -la ci/
python3.11 -m pip install -r ci/deps_pinned.txt
apt-get install -y python3-dev build-essential
python3.11 -m pip install numpy
python3.11 -m pip install -r ci/deps_pinned.txt
python3.11 -m pip install numpy pandas matplotlib scipy
python3.11 -m pip install -e .
make test
python3.11 -m pip install pytest pytest-cov
make test
python3.11 -m pip install pytest-xdist
make test
python3.11 -m pip install --upgrade numpy
python3.11 -m pip install --upgrade pandas matplotlib scipy
python3.11 -m pytest tests/
python3.11 -m pip install numpy==1.21.0
apt-get install -y python3.8 python3.8-venv python3.8-dev
apt-get install -y python3.10 python3.10-venv python3.10-dev
python3.10 -m venv venv310
source venv310/bin/activate
python3.10 -m pip install -r ci/deps_pinned.txt
python3.10 -m pip install numpy pandas matplotlib scipy
python3.10 -m pip install -e .
python3.10 -m pip install pytest pytest-cov pytest-xdist
make test
python3.10 -m pip install numpy==1.21.0
python3.10 -m pip install pandas==1.3.0
apt-get install -y python3.8 python3.8-venv python3.8-dev
apt-get install -y python3.9 python3.9-venv python3.9-dev
python3.10 -m pip install --upgrade numpy pandas matplotlib scipy
python3.10 -m pytest tests/
python3.10 -m pip install numpy==1.21.0

