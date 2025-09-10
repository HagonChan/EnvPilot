ls -la
open "pyproject.toml"
find_file '.github/workflows/*.yml'
find_file .gitlab-ci.yml
find_file .circleci/config.yml
open "README.md"
open "Cargo.toml"
find_file Makefile
find_file tox.ini
find_file tests
find_file 'test_*.py'
apt-get update && apt-get install -y libsasl2-dev libldap2-dev libkrb5-dev gcc python3 python3-pip python3-venv musl-tools perl-core openssl openssl-devel pkgconfig libatomic glibc-devel.i686 libstdc++-devel.i686 libssl-dev pkg-config gcc-powerpc64-linux-gnu libffi-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev liblzma-dev
apt-get install -y libsasl2-dev libldap2-dev libkrb5-dev gcc python3 python3-pip python3-venv musl-tools openssl libssl-dev pkg-config gcc-powerpc64-linux-gnu libffi-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev liblzma-dev
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
wget https://static.rust-lang.org/rustup/dist/x86_64-unknown-linux-gnu/rustup-init && chmod +x rustup-init && ./rustup-init -y
apt-get install -y wget
wget https://static.rust-lang.org/rustup/dist/x86_64-unknown-linux-gnu/rustup-init && chmod +x rustup-init && ./rustup-init -y
. "$HOME/.cargo/env"
cargo install maturin
python3 -m pip install maturin
maturin build
python3 -m pip install target/wheels/uv-0.8.4-py3-none-manylinux_2_34_x86_64.whl
cargo test
python3 -m pytest
python3 -m pip install pytest
python3 -m pytest
python3 -m pip install httpx keyring
find_file scripts/packages/built-by-uv/setup.py
find_file scripts/packages/built-by-uv/pyproject.toml
PYTHONPATH=$PYTHONPATH:$(pwd)/scripts/packages/built-by-uv python3 -m pytest
ls -la scripts/packages/built-by-uv
python3 -m pip install -e scripts/packages/built-by-uv
PYTHONPATH=$PYTHONPATH:$(pwd)/scripts/packages python3 -m pytest
