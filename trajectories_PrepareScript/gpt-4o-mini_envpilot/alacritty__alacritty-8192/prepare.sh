ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "Cargo.toml"
ls -la alacritty
open "alacritty/Cargo.toml"
apt-get update && apt-get install -y libx11-dev libxrandr-dev libfontconfig1-dev libfreetype6-dev libxi-dev libxcursor-dev libxkbcommon-dev libwayland-dev pkg-config cmake gcc
curl https://sh.rustup.rs -sSf | sh -s -- -y
apt-get update && apt-get install -y curl
curl https://sh.rustup.rs -sSf | sh -s -- -y
rustup install 1.74.0
. "$HOME/.cargo/env"
rustup install 1.74.0

