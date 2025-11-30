find_file '*.yml' .
open ".github/workflows/ci.yml"
apt-get update
apt-get install -y libmysqlclient-dev libpq-dev libsqlite3-dev
find_file Makefile
find_file setup.py
find_file 'test_*.py'
find_file tests
find_file README.md
open "README.md"
cargo --version
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
apt-get install -y rustc
cargo test
export PATH="$HOME/.cargo/bin:$PATH" && cargo test
ls $HOME/.cargo/bin
(curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh)
apt-get install -y rustc cargo
cargo test
(curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh)

