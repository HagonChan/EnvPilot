ls -la
open "README.rst"
open ".travis.yml"
open "setup.py"
open "Makefile"
apt-get update && apt-get install -y libblas-dev liblapack-dev
pip install numpy scipy pytest
apt-get install -y python3-pip
pip3 install numpy scipy pytest
make inplace
python3 --version
edit 'python setup.py build_ext -i' 'python3 setup.py build_ext -i'
open "Makefile"
edit 'PYTHON ?= python' 'PYTHON ?= python3' True
make inplace
pip3 install Cython
make inplace
pip3 install Cython==0.29.24
make inplace
apt-get install -y python3.7 python3.7-dev python3.7-venv
apt-get install -y software-properties-common && add-apt-repository -y ppa:deadsnakes/ppa && apt-get update
apt-get install -y python3.7 python3.7-dev python3.7-venv
python3.7 -m venv venv
source venv/bin/activate && pip install numpy scipy pytest Cython
make inplace
pip install Cython==0.29.24
make inplace
make test
python3 -c "import sklearn; print(sklearn.__version__)"
git fetch origin && git checkout main
pip install --upgrade scikit-learn
pytest sklearn
pip install numpy==1.16.6 pytest==5.4.3
pytest sklearn
make clean && make inplace
pytest sklearn
pytest sklearn -W ignore::DeprecationWarning
pip install pytest==4.6.11
pytest sklearn -W ignore::DeprecationWarning
pytest sklearn -W ignore::DeprecationWarning -W ignore::FutureWarning
pytest sklearn -W ignore::DeprecationWarning -W ignore::FutureWarning -W ignore::UserWarning
pytest sklearn -W ignore::DeprecationWarning -W ignore::FutureWarning -W ignore::UserWarning -W ignore::RuntimeWarning
pytest sklearn -W ignore::DeprecationWarning -W ignore::FutureWarning -W ignore::UserWarning -W ignore::RuntimeWarning -W ignore::PendingDeprecationWarning
pytest sklearn -W ignore::DeprecationWarning -W ignore::FutureWarning -W ignore::UserWarning -W ignore::RuntimeWarning -W ignore::PendingDeprecationWarning -W ignore::ImportWarning
pytest sklearn -W ignore::DeprecationWarning -W ignore::FutureWarning -W ignore::UserWarning -W ignore::RuntimeWarning -W ignore::PendingDeprecationWarning -W ignore::ImportWarning -W ignore::ResourceWarning
pytest sklearn -W ignore::DeprecationWarning -W ignore::FutureWarning -W ignore::UserWarning -W ignore::RuntimeWarning -W ignore::PendingDeprecationWarning -W ignore::ImportWarning -W ignore::ResourceWarning -W ignore::SyntaxWarning
pytest sklearn -W ignore::DeprecationWarning -W ignore::FutureWarning -W ignore::UserWarning -W ignore::RuntimeWarning -W ignore::PendingDeprecationWarning -W ignore::ImportWarning -W ignore::ResourceWarning -W ignore::SyntaxWarning -W ignore::BytesWarning
pytest sklearn -W ignore::DeprecationWarning -W ignore::FutureWarning -W ignore::UserWarning -W ignore::RuntimeWarning -W ignore::PendingDeprecationWarning -W ignore::ImportWarning -W ignore::ResourceWarning -W ignore::SyntaxWarning -W ignore::BytesWarning -W ignore::UnicodeWarning
pytest sklearn -W ignore::DeprecationWarning -W ignore::FutureWarning -W ignore::UserWarning -W ignore::RuntimeWarning -W ignore::PendingDeprecationWarning -W ignore::ImportWarning -W ignore::ResourceWarning -W ignore::SyntaxWarning -W ignore::BytesWarning -W ignore::UnicodeWarning -W ignore::Warning

