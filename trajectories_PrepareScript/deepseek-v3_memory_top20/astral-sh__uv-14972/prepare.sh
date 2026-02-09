ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "pyproject.toml"
open "README.md"
apt-get update && apt-get install -y libsasl2-dev libldap2-dev libkrb5-dev gcc python3 python3-pip python3-venv musl-tools perl-core openssl openssl-devel pkgconfig libatomic glibc-devel.i686 libstdc++-devel.i686 libssl-dev pkg-config gcc-powerpc64-linux-gnu libffi-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev liblzma-dev
apt-get update && apt-get install -y libsasl2-dev libldap2-dev libkrb5-dev gcc python3 python3-pip python3-venv musl-tools openssl pkg-config libssl-dev gcc-powerpc64-linux-gnu libffi-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev liblzma-dev
curl https://pyenv.run | bash
apt-get install -y curl
curl https://pyenv.run | bash
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - bash)"
pyenv install 3.12.0
pyenv global 3.12.0 && python --version
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env && rustc --version && cargo --version
pip install uv
uv --version
pip install maturin
maturin --version
uv pip install -e .
uv venv
source .venv/bin/activate && uv pip install -e .
open ".github/workflows/ci.yml"
search_file pytest .github/workflows/ci.yml
search_file test .github/workflows/ci.yml
cargo install cargo-nextest
rustup update stable
cargo install cargo-nextest --locked
cargo nextest run
find . -name "*.py" | grep -i test
pytest
pip install pytest

