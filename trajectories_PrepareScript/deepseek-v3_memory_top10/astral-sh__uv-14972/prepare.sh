ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "pyproject.toml"
apt-get update && apt-get install -y libsasl2-dev libldap2-dev libkrb5-dev gcc python3 python3-pip python3-venv musl-tools perl-core openssl openssl-devel pkgconfig libatomic glibc-devel.i686 libstdc++-devel.i686 libssl-dev pkg-config gcc-powerpc64-linux-gnu libffi-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev liblzma-dev
apt-get update && apt-get install -y libsasl2-dev libldap2-dev libkrb5-dev gcc python3 python3-pip python3-venv musl-tools openssl pkg-config libssl-dev libffi-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev liblzma-dev
add-apt-repository ppa:deadsnakes/ppa -y && apt-get update && apt-get install -y python3.12 python3.12-venv python3.12-dev
apt-get install -y software-properties-common
apt-get install -y --fix-missing software-properties-common
add-apt-repository ppa:deadsnakes/ppa -y && apt-get update && apt-get install -y python3.12 python3.12-venv python3.12-dev
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
curl -LO https://static.rust-lang.org/rustup/dist/x86_64-unknown-linux-gnu/rustup-init && chmod +x rustup-init && ./rustup-init -y
apt-get install -y rustc cargo
python3.12 -m pip install uv
apt-get install -y python3.12-distutils
apt-get install -y python3.12-venv
python3.12 -m ensurepip --upgrade
python3.12 -m pip install uv
python3.12 -m pip install maturin
python3.12 -m venv venv
source venv/bin/activate && uv pip install -e .
source venv/bin/activate && pip install -e .
rustup update nightly && rustup default nightly
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
open "crates/uv/Cargo.toml"
cat crates/uv/Cargo.toml
cat Cargo.toml
edit 'edition = "2024"' 'edition = "2021"' True
sed -i 's/edition = "2024"/edition = "2021"/g' Cargo.toml
source venv/bin/activate && pip install -e .
rm -f Cargo.lock
source venv/bin/activate && pip install -e .
sed -i 's/edition = "2024"/edition = "2021"/g' crates/uv-performance-memory-allocator/Cargo.toml
source venv/bin/activate && pip install -e .
find /root/.cargo/registry/src -name "scroll_derive*" -type d
sed -i 's/edition = "2024"/edition = "2021"/g' /root/.cargo/registry/src/index.crates.io-6f17d22bba15001f/scroll_derive-0.13.0/Cargo.toml
source venv/bin/activate && pip install -e .
sed -i 's/edition = "2024"/edition = "2021"/g' /root/.cargo/registry/src/index.crates.io-6f17d22bba15001f/scroll-0.13.0/Cargo.toml
source venv/bin/activate && pip install -e .
sed -i 's/edition = "2024"/edition = "2021"/g' /root/.cargo/registry/src/index.crates.io-6f17d22bba15001f/goblin-0.10.0/Cargo.toml
source venv/bin/activate && pip install -e .
sed -i 's/edition = "2024"/edition = "2021"/g' /root/.cargo/registry/src/index.crates.io-6f17d22bba15001f/spdx-0.10.9/Cargo.toml
source venv/bin/activate && pip install -e .
sed -i 's/rust-version = "1.86"/rust-version = "1.75"/g' /testbed/crates/uv-trampoline-builder/Cargo.toml
source venv/bin/activate && pip install -e .
sed -i 's/rust-version = "1.81"/rust-version = "1.75"/g' /root/.cargo/registry/src/index.crates.io-6f17d22bba15001f/rancor-0.1.0/Cargo.toml
source venv/bin/activate && pip install -e .

