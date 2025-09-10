ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
apt-get update && apt-get install -y libc6 libcurl4 git build-essential protobuf-compiler libprotobuf-dev libcurl4-openssl-dev libncurses5-dev m4 g++ libssl-dev debhelper curl
./configure --fetch boost --fetch gtest --fetch re2 --fetch jemalloc --fetch quickjs
apt-get install -y python3.12 python3.12-venv python3.12-dev
which pyenv || echo "pyenv not installed"
apt-get update && apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev git
git clone https://github.com/pyenv/pyenv.git ~/.pyenv && echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc && echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc && export PYENV_ROOT="$HOME/.pyenv" && export PATH="$PYENV_ROOT/bin:$PATH"
pyenv install 3.12.0
pyenv global 3.12.0 && python --version
eval "$(pyenv init -)" && python --version
python -m ensurepip --upgrade
./configure --fetch boost --fetch gtest --fetch re2 --fetch jemalloc --fetch quickjs
make
test/run
cd drivers/python && python setup.py install
ls -la drivers
ls -la
ls -la src
ls -la external
open "README.md"
pip search rethinkdb
pip install rethinkdb
test/run
find . -name "*.py" | grep -i driver
open "README.md"
