ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
rustup install 1.65.0
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
apt-get update && apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
rustup install 1.65.0
export PATH="$HOME/.cargo/bin:$PATH" && rustup install 1.65.0
rustup default 1.65.0
rustc --version
cargo test --workspace
cargo update && apt-get install -y libssl-dev pkg-config
cargo config --global net.git-fetch-with-cli true && cargo update
mkdir -p ~/.cargo && echo '[net]\ngit-fetch-with-cli = true' > ~/.cargo/config.toml && cargo update
echo -e '[net]\ngit-fetch-with-cli = true' > ~/.cargo/config.toml && cargo update
cargo build --workspace
apt-get install -y build-essential
cargo build --workspace
cargo test --workspace
cargo xtask --help
open "xtask/src/main.rs"
open ".github/workflows/build.yml"
open "helix-loader/src/lib.rs"
ls -la runtime/grammars
tree-sitter --version
npm --version
apt-get install -y nodejs npm
npm install -g tree-sitter-cli
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode-dev && apt-get install -y nodejs
apt-get remove -y libnode-dev libnode72 && apt-get install -y nodejs
dpkg --remove --force-all libnode72 && apt-get install -y nodejs
node --version
npm install -g tree-sitter-cli
tree-sitter --version
ls -la runtime/grammars/sources
open "xtask/src/main.rs"
cargo build -p helix-loader
cd runtime/grammars/sources/hare && cc -shared -o ../../hare.so -I src src/parser.c src/scanner.c
ls -la
cc -shared -o ../../hare.so -I src src/parser.c
ls -la ../../hare.so
cd /testbed && find runtime/grammars/sources -mindepth 1 -maxdepth 1 -type d -exec sh -c 'cd "{}" && cc -shared -o ../../$(basename "{}").so -I src src/parser.c 2>/dev/null' \;
ls -la runtime/grammars
ls -la runtime/grammars/sources/python
git submodule status
open ".github/workflows/build.yml"
open "languages.toml"

