ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "pyproject.toml"
open "README.md"
apt-get update && apt-get install -y libsasl2-dev libldap2-dev libkrb5-dev gcc python3 python3-pip python3-venv musl-tools perl-core openssl openssl-devel pkgconfig libatomic glibc-devel.i686 libstdc++-devel.i686 libssl-dev pkg-config gcc-powerpc64-linux-gnu libffi-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev liblzma-dev
apt-get update && apt-get install -y libsasl2-dev libldap2-dev libkrb5-dev gcc python3 python3-pip python3-venv musl-tools openssl libssl-dev pkg-config gcc-powerpc64-linux-gnu libffi-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev liblzma-dev
python3 -m venv .venv && source .venv/bin/activate
pip install maturin uv
maturin develop
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env
maturin develop
maturin develop
cargo config --global net.git-fetch-with-cli true
mkdir -p ~/.cargo && echo '[net]' > ~/.cargo/config.toml && echo 'git-fetch-with-cli = true' >> ~/.cargo/config.toml
maturin develop
uv pip install -e .
pytest
pip install pytest
pytest
pip install keyring httpx
pytest
maturin develop
pytest -k "not built_by_uv"
pytest --ignore=scripts/packages/built-by-uv/tests/test_package.py
open "README.md"
edit '## Installation' '## Known Issues

- **Dependency Issue**: The build process may fail due to network issues fetching the `reqwest-middleware` dependency. If this occurs, retry the build or check your network connectivity.

## Installation'
