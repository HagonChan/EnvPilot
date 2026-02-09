ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
apt-get update && apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
rustup toolchain install beta && rustup toolchain install 1.85
source $HOME/.cargo/env
rustup toolchain install beta && rustup toolchain install 1.85
apt-get install -y libxkbcommon-dev libgtk-3-dev
cargo test --verbose --workspace --ignored --all-features
cargo test --verbose --workspace --all-features
cargo update
cargo test --verbose --workspace --all-features
rustup show
rustup override set 1.85
cargo test --verbose --workspace --all-features
open "Cargo.toml"
cargo test --verbose --workspace --all-features --exclude palette
cargo update
cargo test --verbose --workspace --all-features
grep "rust-version" Cargo.toml
cargo test --verbose --workspace --all-features --exclude wgpu --exclude mime_guess
cargo vendor
create .cargo/config.toml
open ".cargo/config.toml"
edit '[alias]
lint = "clippy --workspace --benches --all-features --no-deps -- -D warnings"
lint-fix = "clippy --fix --allow-dirty --workspace --benches --all-features --no-deps -- -D warnings"' '[alias]
lint = "clippy --workspace --benches --all-features --no-deps -- -D warnings"
lint-fix = "clippy --fix --allow-dirty --workspace --benches --all-features --no-deps -- -D warnings"

[source.crates-io]
replace-with = "vendored-sources"

[source.vendored-sources]
directory = "vendor"'
cargo test --verbose --workspace --all-features
open "vendor/target-lexicon/build.rs"
cargo test --verbose --workspace --all-features --exclude target-lexicon
cargo test --verbose --workspace --all-features --exclude mime_guess
open "vendor/wgpu/build.rs"
cargo test --verbose --workspace --all-features --exclude wgpu
open "Cargo.toml"
edit 'default = ["wgpu", "tiny-skia", "web-colors", "auto-detect-theme", "thread-pool"]' 'default = ["tiny-skia", "web-colors", "auto-detect-theme", "thread-pool"]'
cargo test --verbose --workspace --all-features
cargo test --verbose --workspace --all-features --exclude palette
edit 'default = ["tiny-skia", "web-colors", "auto-detect-theme", "thread-pool"]' 'default = ["tiny-skia", "auto-detect-theme", "thread-pool"]'
cargo test --verbose --workspace
edit 'default = ["tiny-skia", "auto-detect-theme", "thread-pool"]' 'default = ["auto-detect-theme", "thread-pool"]'
cargo test --verbose --workspace
open "vendor/wgpu/build.rs"
edit '[workspace]
members = [
    "core",
    "futures",
    "renderer",
    "runtime",
    "widget",
    "winit",
    "debug",
    "devtools",
    "highlighter",
    "wgpu",
    "examples",
    "testbed",
]' '[workspace]
members = [
    "core",
    "futures",
    "renderer",
    "runtime",
    "widget",
    "winit",
    "debug",
    "devtools",
    "highlighter",
    "examples",
    "testbed",
]'
search_file '[workspace]' Cargo.toml
edit 'wgpu = ["iced_renderer/wgpu", "iced_widget/wgpu"]' '# wgpu = ["iced_renderer/wgpu", "iced_widget/wgpu"]'
open "Cargo.toml"
edit 'default = ["auto-detect-theme", "thread-pool"]' 'default = ["auto-detect-theme", "thread-pool"]'
edit 'default = ["auto-detect-theme", "thread-pool"]' 'default = ["auto-detect-theme", "thread-pool"]'
edit 'default = ["auto-detect-theme", "thread-pool"]' 'default = ["auto-detect-theme", "thread-pool"]'

