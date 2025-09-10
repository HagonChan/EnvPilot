ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
apt-get update && apt-get install -y libc6 libcurl4 git build-essential protobuf-compiler libprotobuf-dev libcurl4-openssl-dev libncurses5-dev m4 g++ libssl-dev debhelper curl
apt-get update && apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev git && git clone https://github.com/pyenv/pyenv.git ~/.pyenv && echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc && echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc && export PYENV_ROOT="$HOME/.pyenv" && export PATH="$PYENV_ROOT/bin:$PATH"
pyenv install 3.12.0
pyenv global 3.12.0
python --version

