ls -la
open ".travis.yml"
open "build_tools/travis/install.sh"
open "build_tools/travis/test_script.sh"
apt-get update
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh
apt-get install -y wget
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh
bash miniconda.sh -b -p $HOME/miniconda
export PATH=$HOME/miniconda/bin:$PATH
conda --version
conda create -n test_env python=3.6 -y
conda tos accept --override-channels --channel https://repo.anaconda.com/pkgs/main
conda tos accept --override-channels --channel https://repo.anaconda.com/pkgs/r
conda create -n test_env python=3.6 -y
source activate test_env
conda install -y numpy scipy cython pytest
cd /testbed && python setup.py install
apt-get install -y build-essential
cd /testbed && python setup.py install
cd /testbed && pytest --showlocals --durations=20 sklearn
cd /testbed && python setup.py clean --all && python setup.py install
cd /testbed && pytest --showlocals --durations=20 sklearn
cd /testbed && python setup.py build_ext --inplace
cd /testbed && python -c "import sklearn.__check_build._check_build; print('Successfully imported _check_build')"
cd /testbed && pytest --showlocals --durations=20 sklearn
