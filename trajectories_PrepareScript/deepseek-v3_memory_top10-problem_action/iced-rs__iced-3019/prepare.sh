ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
apt-get update && apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env
apt-get install -y libxkbcommon-dev libgtk-3-dev
rustup show
rustup toolchain install beta
rustup toolchain install 1.85
open "Cargo.toml"
cargo build
cargo build --offline
cargo test --workspace --exclude iced_debug
edit 'iced_debug.workspace = true' '# iced_debug.workspace = true' True
cargo test --workspace
edit 'hot = ["debug", "iced_debug/hot"]' '# hot = ["debug", "iced_debug/hot"]' True
cargo test --workspace
cargo test --workspace --exclude debug
edit '"debug",' '# "debug",' True
cargo test --workspace
edit 'thread-pool = ["iced_futures/thread-pool"]' 'thread-pool = ["iced_futures/thread-pool"]' True
open "Cargo.toml"
edit 'thread-pool = ["iced_futures/thread-pool"]' 'thread-pool = ["iced_futures/thread-pool"]' True
open "Cargo.toml"
cargo clean
edit 'thread-pool = ["iced_futures/thread-pool"]' 'thread-pool = ["iced_futures/thread-pool"]' True
open "Cargo.toml"
edit 'thread-pool = ["iced_futures/thread-pool"]' '# thread-pool = ["iced_futures/thread-pool"]' True
cargo test --workspace
edit 'tokio = ["iced_futures/tokio"]' '# tokio = ["iced_futures/tokio"]' True
cargo test --workspace
edit 'smol = ["iced_futures/smol"]' '# smol = ["iced_futures/smol"]' True
cargo test --workspace
edit 'system = ["iced_winit/system"]' '# system = ["iced_winit/system"]' True
cargo test --workspace
edit 'web-colors = ["iced_renderer/web-colors"]' '# web-colors = ["iced_renderer/web-colors"]' True
cargo test --workspace
edit 'crisp = ["iced_core/crisp", "iced_widget/crisp"]' '# crisp = ["iced_core/crisp", "iced_widget/crisp"]' True
cargo test --workspace
edit 'webgl = ["iced_renderer/webgl"]' '# webgl = ["iced_renderer/webgl"]' True
cargo test --workspace
edit 'highlighter = ["iced_highlighter", "iced_widget/highlighter"]' '# highlighter = ["iced_highlighter", "iced_widget/highlighter"]' True
cargo test --workspace
edit 'advanced = ["iced_core/advanced", "iced_widget/advanced"]' '# advanced = ["iced_core/advanced", "iced_widget/advanced"]' True
cargo test --workspace
edit 'fira-sans = ["iced_renderer/fira-sans"]' '# fira-sans = ["iced_renderer/fira-sans"]' True
cargo test --workspace

