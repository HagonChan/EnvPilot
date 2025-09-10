ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "rust-toolchain.toml"
open "pyproject.toml"
apt-get update && apt-get install -y libsasl2-dev libldap2-dev libkrb5-dev gcc python3 python3-pip python3-venv musl-tools perl-core openssl openssl-devel pkgconfig libatomic glibc-devel.i686 libstdc++-devel.i686 libssl-dev pkg-config gcc-powerpc64-linux-gnu libffi-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev liblzma-dev
apt-get install -y libsasl2-dev libldap2-dev libkrb5-dev gcc python3 python3-pip python3-venv musl-tools openssl pkg-config libssl-dev gcc-powerpc64-linux-gnu libffi-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev liblzma-dev
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain 1.88
apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain 1.88
source $HOME/.cargo/env
rustc --version && cargo --version
python3.12 -m venv venv
add-apt-repository ppa:deadsnakes/ppa -y && apt-get update && apt-get install -y python3.12 python3.12-venv
apt-get install -y software-properties-common
add-apt-repository ppa:deadsnakes/ppa -y && apt-get update && apt-get install -y python3.12 python3.12-venv
python3.12 -m venv venv
source venv/bin/activate
pip install uv
uv pip install -e .
cargo test --workspace
pytest
uv pip install pytest
pytest
find . -name "*test*" -type d | head -10
cargo test -p uv --lib
cargo test -p uv --test '*'
grep -A 5 -B 5 "cargo test" .github/workflows/ci.yml
grep -n "cargo test" .github/workflows/ci.yml
sed -n '200,220p' .github/workflows/ci.yml
sed -n '220,240p' .github/workflows/ci.yml
cargo install cargo-nextest
cargo nextest run --features python-patch --workspace --status-level skip --failure-output immediate-final --no-fail-fast
uv --version
