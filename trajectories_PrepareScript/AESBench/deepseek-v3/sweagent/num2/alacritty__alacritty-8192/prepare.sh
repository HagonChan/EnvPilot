find_file '.github/workflows/*.yml'
find_file .gitlab-ci.yml
find_file .circleci/config.yml
find_file azure-pipelines.yml
find_file Jenkinsfile
find_file requirements.txt
find_file setup.py
find_file pyproject.toml
find_file package.json
find_file README.md
open "/testbed/README.md"
find_file INSTALL.md
open "/testbed/INSTALL.md"
find_file CONTRIBUTING.md
open "/testbed/CONTRIBUTING.md"
find_file Cargo.toml
open "/testbed/Cargo.toml"
apt update
apt install -y build-essential cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
apt install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env
cargo build
cargo test
