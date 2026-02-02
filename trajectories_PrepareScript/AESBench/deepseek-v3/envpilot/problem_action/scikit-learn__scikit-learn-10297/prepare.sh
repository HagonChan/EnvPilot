ls -la
open ".travis.yml"
open "build_tools/travis/install.sh"
apt-get update && apt-get install -y python3-dev build-essential libblas-dev liblapack-dev python3-pip
python3 -m venv .venv && . .venv/bin/activate
apt-get install -y python3.10-venv
python3 -m venv .venv && . .venv/bin/activate
pip install pytest pytest-cov cython
pip install -e .
pip install numpy scipy
open "setup.py"
pip install --upgrade cython && pip show numpy scipy
pip install -e . --verbose
apt-get install -y libopenblas-dev liblapack-dev
pip install -e .
pip install numpy==1.8.2 scipy==0.13.3 --force-reinstall
pip install numpy==1.21.6 scipy==1.7.3 --force-reinstall
pip install -e .
apt-get install -y python3.8 python3.8-venv
apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev git
curl https://pyenv.run | bash
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - bash)"
pyenv install 3.8.16
pyenv virtualenv 3.8.16 project-env && pyenv activate project-env
deactivate && pyenv activate project-env
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - bash)"
pyenv activate project-env
pip install numpy scipy cython pytest pytest-cov
pip install -e .
update-alternatives --config libblas.so.3
update-alternatives --install /usr/lib/x86_64-linux-gnu/libblas.so.3 libblas.so.3 /usr/lib/x86_64-linux-gnu/libopenblas.so.0 100
update-alternatives --set libblas.so.3 /usr/lib/x86_64-linux-gnu/libopenblas.so.0
ln -sf /usr/lib/x86_64-linux-gnu/libopenblas.so.0 /usr/lib/x86_64-linux-gnu/libblas.so.3
pip install --force-reinstall numpy scipy
pip install -e .
pip install cython==0.29.36
pip install -e .
pytest
pip install numpy==1.23.5 --force-reinstall
pytest
pytest sklearn/tests/test_common.py
pip install -e . --force-reinstall
g++ --version && ldd --version
pip install --upgrade numpy scipy
pytest sklearn/tests/test_base.py -v
pip uninstall scikit-learn -y && pip install -e . --no-cache-dir
pytest sklearn/tests/test_base.py -v

ls -l /usr/lib/x86_64-linux-gnu/libstdc++*


