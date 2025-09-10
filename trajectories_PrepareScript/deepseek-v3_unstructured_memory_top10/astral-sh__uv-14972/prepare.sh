ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
scroll_down
scroll_down
apt-get update && apt-get install -y python3.12 python3.12-venv python3.12-dev libssl-dev libsasl2-dev libldap2-dev libkrb5-dev gcc musl-tools perl-core openssl pkgconfig libatomic glibc-devel.i686 libstdc++-devel.i686 gcc-powerpc64-linux-gnu
apt-get install -y python3.12 python3.12-venv python3.12-dev libssl-dev libsasl2-dev libldap2-dev libkrb5-dev gcc musl-tools perl-core openssl pkgconfig libatomic glibc-devel.i686 libstdc++-devel.i686 gcc-powerpc64-linux-gnu
add-apt-repository ppa:deadsnakes/ppa -y && apt-get update && apt-get install -y python3.12 python3.12-venv python3.12-dev
apt-get install -y software-properties-common
add-apt-repository ppa:deadsnakes/ppa -y && apt-get update && apt-get install -y python3.12 python3.12-venv python3.12-dev
python3.12 --version
curl -LsSf https://astral.sh/uv/install.sh | sh
apt-get install -y curl
curl -LsSf https://astral.sh/uv/install.sh | sh
source $HOME/.local/bin/env
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
apt-get install -y rustc cargo
rustc --version && cargo --version
cargo install cargo-nextest
cargo install cargo-nextest --version 0.9.85
rustup self uninstall -y
apt-get remove -y rustc cargo
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
rustc --version
python3.12 -m venv venv
source venv/bin/activate && uv pip install -e .
df -h && apt-get clean && rm -rf /var/lib/apt/lists/*
rm -rf /tmp/* && rm -rf ~/.cache/* && apt-get autoremove -y
df -h
rm -rf /var/log/* && journalctl --vacuum-size=1M && rm -rf ~/.local/share/Trash/*
source venv/bin/activate && uv pip install -e .
source venv/bin/activate && python --version
open "pyproject.toml"
cat pyproject.toml
uv pip install maturin
maturin develop
find . -name "*.py" | grep -i test
uv pip install pytest
pytest
uv pip install keyring httpx
pytest scripts/packages/keyring_test_plugin/keyrings/test_keyring.py scripts/publish/test_publish.py
