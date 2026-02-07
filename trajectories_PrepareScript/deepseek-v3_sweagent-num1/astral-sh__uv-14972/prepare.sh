ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "pyproject.toml"
open "Cargo.toml"
rustc --version
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
apt-get update && apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
ping -c 4 static.rust-lang.org
apt-get install -y iputils-ping
ping -c 4 static.rust-lang.org
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
wget https://sh.rustup.rs -O rustup-init.sh && chmod +x rustup-init.sh && ./rustup-init.sh -y
apt-get install -y wget
wget https://sh.rustup.rs -O rustup-init.sh && chmod +x rustup-init.sh && ./rustup-init.sh -y
wget --no-check-certificate https://sh.rustup.rs -O rustup-init.sh && chmod +x rustup-init.sh && ./rustup-init.sh -y
apt-get install -y rustc cargo
rustc --version && cargo --version
python3.12 --version
add-apt-repository ppa:deadsnakes/ppa -y && apt-get update && apt-get install -y python3.12 python3.12-dev python3.12-venv
apt-get install -y software-properties-common
add-apt-repository ppa:deadsnakes/ppa -y && apt-get update && apt-get install -y python3.12 python3.12-dev python3.12-venv
python3.12 --version
python3.12 -m pip install maturin
python3.12 -m ensurepip --upgrade
python3.12 -m pip install maturin
cd crates/uv && maturin build
rustup update nightly && rustup default nightly
./rustup-init.sh -y
cd /testbed && ./rustup-init.sh -y
open "crates/uv/Cargo.toml"
open "Cargo.toml"
edit 'edition = "2024"' 'edition = "2021"'
cp Cargo.toml Cargo.toml.bak
sed -i 's/edition = "2024"/edition = "2021"/g' Cargo.toml
cd crates/uv && maturin build
cd /testbed && rm -f Cargo.lock && cargo build
wget https://static.rust-lang.org/dist/rust-nightly-x86_64-unknown-linux-gnu.tar.gz -O rust-nightly.tar.gz
tar -xzf rust-nightly.tar.gz && cd rust-nightly-x86_64-unknown-linux-gnu && ./install.sh
rustc --version && cargo --version
export PATH=/usr/local/bin:$PATH && rustc --version && cargo --version
cd /testbed
mv Cargo.toml.bak Cargo.toml
cd crates/uv && maturin build
apt-get install -y make
maturin build
python3.12 -m pip install /testbed/target/wheels/uv-0.8.4-py3-none-manylinux_2_34_x86_64.whl
uv --version

