ls -la
open ".travis.yml"
open "build_tools/travis/install.sh"
open "build_tools/travis/test_script.sh"
conda create -n testenv python=3.6.2 numpy=1.13.1 scipy=0.19.1 cython=0.26.1 pandas=0.20.3 pyamg=3.3.2 pillow=4.3.0 pytest pytest-cov --yes
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh && chmod +x miniconda.sh && ./miniconda.sh -b -p ~/miniconda
curl -o miniconda.sh https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh && chmod +x miniconda.sh && ./miniconda.sh -b -p ~/miniconda
virtualenv --system-site-packages testvenv && source testvenv/bin/activate
apt-get update && apt-get install -y python3 python3-pip python3-dev
pip3 install numpy==1.13.1 scipy==0.19.1 cython==0.26.1 pytest pytest-cov
apt-get install -y python3.6 python3.6-dev python3.6-venv
pip3 install cython
pip3 install numpy==1.13.1 scipy==0.19.1
pip3 install numpy scipy
ls -la
pip3 install -e .
apt-get install -y libopenblas-dev liblapack-dev
pip3 install -e .
open "build_tools/travis/test_script.sh"
pytest --showlocals --durations=20 --pyargs sklearn
pip3 install pytest
pytest --showlocals --durations=20 --pyargs sklearn
ls -la
open "Makefile"
make inplace
edit 'PYTHON ?= python' 'PYTHON ?= python3' True
edit 'BITS := $(shell python -c '"'"'import struct; print(8 * struct.calcsize("P"))'"'"')' 'BITS := $(shell python3 -c '"'"'import struct; print(8 * struct.calcsize("P"))'"'"')' True
make inplace
pip3 install --force-reinstall cython==0.26.1
open "sklearn/ensemble/_gradient_boosting.pyx"
edit 'safe_realloc(&X_sample, n_features)
    safe_realloc(&feature_to_sample, n_features)' 'safe_realloc(<DTYPE_t**>&X_sample, n_features)
    safe_realloc(<SIZE_t**>&feature_to_sample, n_features)' True
make inplace
pytest sklearn

