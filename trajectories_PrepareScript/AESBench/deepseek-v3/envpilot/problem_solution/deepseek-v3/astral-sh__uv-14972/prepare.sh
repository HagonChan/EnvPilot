ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
scroll_down
scroll_down
scroll_down
open "pyproject.toml"
open "README.md"
ls -la
ls -la scripts
open "scripts/uv-run-remote-script-test.py"
ls -la crates/uv/tests
ls -la crates/uv/tests/it
ls -la python
ls -la python/uv
ls -la tests
apt-get update && apt-get install -y libsasl2-dev libldap2-dev libkrb5-dev gcc python3 python3-pip python3-venv musl-tools perl-core openssl openssl-devel pkg-config libatomic glibc-devel.i686 libstdc++-devel.i686 libssl-dev pkg-config gcc-powerpc64-linux-gnu libffi-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev liblzma-dev
apt-get install -y libsasl2-dev libldap2-dev libkrb5-dev gcc python3 python3-pip python3-venv musl-tools openssl pkg-config libssl-dev pkg-config gcc-powerpc64-linux-gnu libffi-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev liblzma-dev
python3 --version && uv --version
apt-get install -y python3.12 python3.12-venv python3.12-dev
add-apt-repository ppa:deadsnakes/ppa -y && apt-get update && apt-get install -y python3.12 python3.12-venv python3.12-dev
apt-get install -y software-properties-common
add-apt-repository ppa:deadsnakes/ppa -y && apt-get update && apt-get install -y python3.12 python3.12-venv python3.12-dev
python3.12 --version
python3.12 -m pip install uv
apt-get install -y python3.12-distutils
python3.12 -m ensurepip --upgrade && python3.12 -m pip install uv
python3.12 -m venv venv
source venv/bin/activate && uv pip install -e .
uv pip install -e .
cargo nextest run
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env
cargo --version
cargo nextest run
cargo install cargo-nextest
cargo install cargo-nextest --version 0.9.114
cargo install cargo-nextest --version 0.9.100
cargo test
