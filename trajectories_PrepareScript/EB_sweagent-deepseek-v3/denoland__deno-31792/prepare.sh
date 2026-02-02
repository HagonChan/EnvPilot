ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
search_file run: .github/workflows/ci.yml
open "README.md"
open ".github/CONTRIBUTING.md"
open "Cargo.toml"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
wget -qO- https://sh.rustup.rs | sh -s -- -y
apt update && apt install -y rustc cargo
apt install -y clang lld
git submodule update --init --recursive
cargo build
open "Cargo.toml"
edit '# Copyright 2018-2026 the Deno authors. MIT license.' 'cargo-features = ["edition2024"]
# Copyright 2018-2026 the Deno authors. MIT license.'
cargo build
open "bench_util/Cargo.toml"
edit '# Copyright 2018-2026 the Deno authors. MIT license.' 'cargo-features = ["edition2024"]
# Copyright 2018-2026 the Deno authors. MIT license.'
cargo build
create add_edition2024.sh
insert '#!/bin/bash

# Find all Cargo.toml files in the workspace
find . -name "Cargo.toml" -type f | while read -r file; do
    # Check if the file already has the feature line
    if ! grep -q "cargo-features = \["edition2024\"]" "$file"; then
        # Add the feature line at the top of the file
        sed -i '"'"'1i cargo-features = ["edition2024"]'"'"' "$file"
        echo "Added edition2024 feature to $file"
    else
        echo "$file already has the edition2024 feature"
    fi
done' 0
chmod +x add_edition2024.sh && ./add_edition2024.sh
edit 'if ! grep -q "cargo-features = \["edition2024\"]" "$file"; then' 'if ! grep -q '"'"'cargo-features = \\[\"edition2024\"\\]'"'"' \"$file\"; then'
./add_edition2024.sh
cargo build
open "Cargo.toml"
edit 'cargo-features = ["edition2024"]
cargo-features = ["edition2024"]' 'cargo-features = ["edition2024"]'
cargo build
open "bench_util/Cargo.toml"
edit 'cargo-features = ["edition2024"]
cargo-features = ["edition2024"]' 'cargo-features = ["edition2024"]'
cargo build
rm Cargo.lock
cargo build
open "runtime/permissions/Cargo.toml"
open "Cargo.toml"
edit 'deno_whoami = "0.1.0"' 'deno_whoami = "0.1.0"
fqdn = "0.4.2"'
cargo build
edit 'fqdn = "0.4.6"' ''
goto 180
edit 'fqdn = "0.4.6"' ''
cargo build
rustup self uninstall -y
apt remove -y rustc cargo && apt autoremove -y
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- --default-toolchain nightly -y
wget -qO- https://sh.rustup.rs | sh -s -- --default-toolchain nightly -y
apt update && apt install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- --default-toolchain nightly -y
source $HOME/.cargo/env
cargo build

