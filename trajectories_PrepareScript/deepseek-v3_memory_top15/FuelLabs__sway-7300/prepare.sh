find_file '.github/workflows/*.yml'
find_file .gitlab-ci.yml
find_file .circleci/config.yml
find_file Jenkinsfile
find_file Cargo.toml
open "/testbed/Cargo.toml"
find_file README.md
open "/testbed/README.md"
rustup install 1.86.0
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
apt-get update && apt-get install -y curl libssl-dev gcc make
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
rustup install 1.86.0 && rustup default 1.86.0
source $HOME/.cargo/env
rustup install 1.86.0 && rustup default 1.86.0
rustc --version && cargo --version
cargo install --locked --path ./forc
cargo test
cargo install fuel-core
search_file fuel-core /testbed/README.md
find_file '*.md'
search_file fuel-core /testbed/Cargo.toml
cargo install --git https://github.com/FuelLabs/fuel-core --tag v0.46.0 fuel-core
cargo install --git https://github.com/FuelLabs/fuel-core --tag v0.46.0 fuel-core --git-fetch-with-cli
cargo config --global net.git-fetch-with-cli true
mkdir -p ~/.cargo && echo '[net]
git-fetch-with-cli = true' >> ~/.cargo/config.toml
cargo install --git https://github.com/FuelLabs/fuel-core --tag v0.46.0 fuel-core
cargo test
