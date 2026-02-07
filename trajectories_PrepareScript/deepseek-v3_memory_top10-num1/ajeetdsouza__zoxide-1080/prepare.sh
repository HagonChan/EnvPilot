ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "justfile"
curl https://sh.rustup.rs -sSf | sh -s -- -y
apt-get update && apt-get install -y curl
curl https://sh.rustup.rs -sSf | sh -s -- -y
. $HOME/.cargo/env
rustc --version && cargo --version
cargo install just
apt-get install -y build-essential pkg-config libssl-dev libclang-dev cmake
cargo install just
just --version
just test
open "justfile"
edit 'nix-shell --cores 0 --pure --run '"'"'cargo nextest run --all-features --no-fail-fast --workspace {{args}}'"'"'' 'cargo nextest run --all-features --no-fail-fast --workspace {{args}}'
just test
cargo install cargo-nextest
just test
open "README.md"
apt-get install -y zsh
just test
apt-get install -y shellcheck
just test
apt-get install -y xonsh
just test
apt-get install -y pylint
just test
apt-get install -y mypy
just test
apt-get install -y black
just test
apt-get install -y tcsh
just test
apt-get install -y powershell
curl -sSL https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
curl -sSL https://packages.microsoft.com/config/ubuntu/$(lsb_release -rs)/prod.list > /etc/apt/sources.list.d/microsoft-prod.list
curl -sSL https://packages.microsoft.com/config/ubuntu/22.04/prod.list > /etc/apt/sources.list.d/microsoft-prod.list
apt-get update && apt-get install -y powershell
curl -sSL https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
apt-get update && apt-get install -y powershell
just test
apt-get install -y shfmt
just test
cargo nextest run --all-features --no-fail-fast --workspace -- test_name::posix_shfmt::cmd_1_None::hook_3_InitHook__Pwd::echo_1_false::resolve_symlinks_1_false
cargo nextest list
cargo nextest list --all-features
cargo nextest list --all-features --package zoxide --test shell
cargo nextest run --all-features --no-fail-fast --workspace -- shell::tests::posix_shfmt::cmd_1_None::hook_3_InitHook__Pwd::echo_1_false::resolve_symlinks_1_false

