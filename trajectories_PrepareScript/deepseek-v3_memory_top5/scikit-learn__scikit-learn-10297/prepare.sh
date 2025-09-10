ls
open "README.rst"
open "setup.py"
open "Makefile"
apt-get install -y libblas-dev liblapack-dev
apt-get install -y python3 python3-pip
apt-get update
apt-get install -y python3 python3-pip
python3 --version && pip3 --version
python3 -m venv .venv && . .venv/bin/activate
apt-get install -y python3.10-venv
python3 -m venv .venv && . .venv/bin/activate
pip install --upgrade pip
pip install numpy>=1.8.2 scipy>=0.13.3
make inplace
pip install Cython
make inplace
pip uninstall -y Cython && pip install Cython==0.29.36
make inplace
deactivate && apt-get install -y python3.7 python3.7-venv
apt-get install -y software-properties-common && add-apt-repository -y ppa:deadsnakes/ppa && apt-get update
apt-get install -y python3.7 python3.7-venv
python3.7 -m venv .venv && . .venv/bin/activate
pip install --upgrade pip
pip install numpy>=1.8.2 scipy>=0.13.3
pip install Cython
make inplace
pip uninstall -y Cython && pip install Cython==0.29.36
make inplace
deactivate && apt-get install -y python3.7 python3.7-venv
python3.7 -m venv .venv && . .venv/bin/activate
pip install --upgrade pip
pip install numpy>=1.8.2 scipy>=0.13.3
pip install Cython
make inplace
pip uninstall -y numpy && pip install numpy==1.19.5
make inplace
deactivate && apt-get install -y python3.7 python3.7-venv
python3.7 -m venv .venv && . .venv/bin/activate
pip install --upgrade pip
pip install numpy>=1.8.2 scipy>=0.13.3
pip install Cython
make inplace
deactivate && apt-get install -y python3.7 python3.7-venv
python3.7 -m venv .venv && . .venv/bin/activate
pip install --upgrade pip
pip install numpy>=1.8.2 scipy>=0.13.3
pip install Cython
make inplace

