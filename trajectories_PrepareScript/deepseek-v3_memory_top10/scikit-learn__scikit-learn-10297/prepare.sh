ls -la
open ".travis.yml"
open "build_tools/travis/install.sh"
open "build_tools/travis/test_script.sh"
apt-get update && apt-get install -y python3-dev build-essential gcc
python3.6 -m venv .venv && source .venv/bin/activate
ls /usr/bin/python*
python3.10 -m venv .venv && source .venv/bin/activate
apt-get install -y python3.10-venv
python3.10 -m venv .venv && source .venv/bin/activate
ls -la requirements*
open "setup.py"
pip install numpy>=1.8.2 scipy>=0.13.3
pip install -e .
pip install Cython
pip install -e .
apt-get install -y libopenblas-dev
pip install -e .
ls /usr/bin/python*
apt-get install -y python3.7 python3.7-venv
apt-get install -y python3.8 python3.8-venv
pip install setuptools==59.8.0
pip install -e .
pip install Cython==0.29.36
pip install -e .
pip install pytest
pytest
ls /usr/bin/python*
pip install numpy==1.16.6
apt-get install -y python3.6 python3.6-venv
apt-get install -y python3.6
pip install numpy==1.16.6
pip install numpy==1.16.6 --only-binary=:all:
pip download numpy==1.16.6 --no-binary=:all:
pip install numpy-1.16.6.zip
pip install numpy
pip install scipy
pip install Cython
pytest
