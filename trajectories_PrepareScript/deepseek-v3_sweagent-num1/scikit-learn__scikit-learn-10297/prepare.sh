ls -la
open ".travis.yml"
open "build_tools/travis/install.sh"
open "build_tools/travis/test_script.sh"
python -m venv testenv && source testenv/bin/activate
ls /usr/bin/python*
apt-get update && apt-get install -y python3.6 python3.6-venv
apt-get update && apt-get install -y python3.6 python3.6-venv
apt-get install -y python3.6
apt-get install -y python3 python3-venv
python3 -m venv testenv && source testenv/bin/activate
pip install numpy scipy cython pandas pyamg pillow pytest pytest-cov
ls setup.py
pip install -e .
apt-get install -y libopenblas-dev libatlas-base-dev
pip install -e .
pip show cython
pip install --force-reinstall 'cython==0.29.36'
pip install -e .
deactivate && apt-get install -y python3.6 python3.6-venv
apt-get install -y python3.6
apt-get install -y python3.8 python3.8-venv
source testenv/bin/activate && pip install --upgrade numpy scipy cython
python setup.py build_ext --inplace
pip install --force-reinstall 'cython==0.29.36'
python setup.py build_ext --inplace
pip install .
apt-get install -y software-properties-common && add-apt-repository -y ppa:deadsnakes/ppa && apt-get update
docker --version
apt-get update && apt-get install -y software-properties-common && add-apt-repository -y ppa:deadsnakes/ppa && apt-get update
wget https://www.python.org/ftp/python/3.6.15/Python-3.6.15.tar.xz
apt-get install -y wget
wget https://www.python.org/ftp/python/3.6.15/Python-3.6.15.tar.xz
tar -xf Python-3.6.15.tar.xz
cd Python-3.6.15 && ./configure --enable-optimizations
apt-get install -y build-essential
./configure --enable-optimizations
make -j$(nproc) && make altinstall
apt-get install -y zlib1g-dev
make altinstall
python3.6 --version
python3.6 -m venv py36env && source py36env/bin/activate
python3.6 -m venv --without-pip py36env && source py36env/bin/activate
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && python3.6 get-pip.py
apt-get install -y curl
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && python3.6 get-pip.py
curl https://bootstrap.pypa.io/pip/3.6/get-pip.py -o get-pip.py && python3.6 get-pip.py
curl --insecure https://bootstrap.pypa.io/pip/3.6/get-pip.py -o get-pip.py && python3.6 get-pip.py
python3.6 -m ensurepip --upgrade

