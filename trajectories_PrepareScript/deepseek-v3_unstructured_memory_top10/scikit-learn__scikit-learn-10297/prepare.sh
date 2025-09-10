ls -la
open ".travis.yml"
open "build_tools/travis/install.sh"
open "build_tools/travis/test_script.sh"
apt-get update && apt-get install -y python3 python3-dev python3-pip libatlas3-base libatlas-dev
apt-get install -y python3 python3-dev python3-pip libatlas3-base libatlas-base-dev
pip install -U numpy scipy cython pytest pytest-cov
python3 -c "import numpy, scipy, cython, pytest; print(f'numpy: {numpy.__version__}\nscipy: {scipy.__version__}\ncython: {cython.__version__}\npytest: {pytest.__version__}')"
pytest --showlocals --durations=20 --pyargs sklearn
python setup.py install
python3 setup.py install
pip install --force-reinstall 'cython==0.29.36'
python3 setup.py install
apt-cache policy python3.6 python3.7
apt-get install -y software-properties-common && add-apt-repository -y ppa:deadsnakes/ppa && apt-get update && apt-get install -y python3.7 python3.7-dev
update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.7 1 && update-alternatives --set python3 /usr/bin/python3.7 && python3 --version
pip install -U numpy scipy cython pytest pytest-cov
apt-get install -y python3.7-distutils
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && python3.7 get-pip.py
apt-get install -y curl
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && python3.7 get-pip.py
curl https://bootstrap.pypa.io/pip/3.7/get-pip.py -o get-pip.py && python3.7 get-pip.py
python3.7 -m pip install -U numpy scipy cython pytest pytest-cov
python3.7 -c "import numpy, scipy, cython, pytest; print(f'numpy: {numpy.__version__}\nscipy: {scipy.__version__}\ncython: {cython.__version__}\npytest: {pytest.__version__}')"
python3.7 setup.py install
python3.7 -m pip install --force-reinstall 'cython==0.29.36'
python3.7 setup.py install
python3.7 -m pytest --showlocals --durations=20 --pyargs sklearn
python3.7 setup.py clean --all
python3.7 setup.py install
python3.7 -c "import sklearn; print(sklearn.__version__)"
ls -la sklearn/__check_build
cd sklearn/__check_build && python3.7 setup.py build_ext --inplace
python3.7 -m pip install --force-reinstall 'numpy==1.16.6'
python3.7 setup.py build_ext --inplace
cd /testbed && python3.7 -m pip install .
python3.7 -m pip install --force-reinstall .
python3.7 -c "import sklearn; print(sklearn.__version__)"
cd /testbed/sklearn/__check_build && cython _check_build.pyx && gcc -shared -pthread -fPIC -fwrapv -O2 -Wall -fno-strict-aliasing -I/usr/include/python3.7m -o _check_build.so _check_build.c
python3.7 -c "import sklearn; print(sklearn.__version__)"
python3.7 -m pytest --showlocals --durations=20 --pyargs sklearn
python3.7 -m pip install murmurhash
python3.7 -m pytest --showlocals --durations=20 --pyargs sklearn
python3.7 -m pip install --no-deps --force-reinstall .
cd /testbed && python3.7 -m pip install --force-reinstall .
python3.7 -c "from sklearn.utils import murmurhash; print(murmurhash.__file__)"
python3.7 -c "import murmurhash; print(murmurhash.__file__)"
ln -s /usr/local/lib/python3.7/dist-packages/murmurhash /testbed/sklearn/utils/murmurhash
python3.7 -c "from sklearn.utils import murmurhash; print(murmurhash.__file__)"

