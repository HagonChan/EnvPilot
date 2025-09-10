ls
open "pyproject.toml"
open "README.md"
ls .github/workflows
open ".github/workflows/ci.yml"
apt-get update && apt-get install -y python3.12 python3.12-dev python3.12-venv
apt-get install -y libsasl2-dev libldap2-dev libkrb5-dev gcc python3-pip python3-venv musl-tools perl-core openssl openssl-devel pkg-config libatomic glibc-devel.i686 libstdc++-devel.i686 libssl-dev pkg-config gcc-powerpc64-linux-gnu libffi-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev liblzma-dev
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env
python3.12 --version && rustc --version && cargo --version
apt-get install -y python3.12 python3.12-dev python3.12-venv
apt-get install -y software-properties-common && add-apt-repository ppa:deadsnakes/ppa -y && apt-get update
apt-get install -y python3.12 python3.12-dev python3.12-venv
python3.12 --version && rustc --version && cargo --version
python3.12 -m venv venv
source venv/bin/activate && pip install maturin
maturin build
rustup update stable
apt-get install -y libsasl2-dev libldap2-dev libkrb5-dev gcc python3-pip python3-venv musl-tools perl-core openssl openssl-devel pkg-config libatomic glibc-devel.i686 libstdc++-devel.i686 libssl-dev pkg-config gcc-powerpc64-linux-gnu libffi-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev liblzma-dev
maturin build
cargo clean
rustup update stable
maturin build
rustup show
open "rust-toolchain.toml"
cat rust-toolchain.toml
rustup update stable
rustup override set stable
maturin build
cargo clean
maturin build
rustup show
rustup override set 1.88-x86_64-unknown-linux-gnu
maturin build
cargo clean
maturin build
rustup show
rustup override set stable
maturin build
rustup show
rustup override set 1.88-x86_64-unknown-linux-gnu
maturin build
rustup show
rustup override set stable
maturin build
rustup show
rustup override set 1.88-x86_64-unknown-linux-gnu

