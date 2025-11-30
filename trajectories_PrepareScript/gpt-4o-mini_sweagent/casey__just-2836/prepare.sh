find_file '*.yml' .
find_file '*.yaml' .
open "/testbed/.github/workflows/ci.yaml"
scroll_down
find_file Cargo.toml .
open "/testbed/Cargo.toml"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
wget https://sh.rustup.rs -O rustup-init.sh && sh rustup-init.sh
apt-get update && apt-get install rustc cargo
apt-get update
apt-get install rustc cargo
find_file Makefile .
find_file tox.ini .
find_file README.md .
open "/testbed/README.md"
scroll_down
cargo install just
find_file '*.sh' .
open "/testbed/www/install.sh"
bash /testbed/www/install.sh
cargo --version
open "/testbed/contrib/just.sh"
cargo test

exit_forfeit

exit_forfeit

exit_forfeit

exit_forfeit

exit_forfeit

exit_forfeit
