ls -la
ls -la .github/workflows
open ".github/workflows/turborepo-test.yml"
goto 200
goto 282
open "./.github/actions/setup-turborepo-environment/action.yml"
open "./.github/actions/setup-node/action.yml"
open "./.github/actions/setup-rust/action.yml"
apt-get update && apt-get install -y graphviz sccache cargo libssl-dev build-essential
apt-get install -y graphviz sccache cargo libssl-dev build-essential
apt-get install -y graphviz cargo libssl-dev build-essential
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode72
dpkg --force-all -r libnode72
apt-get install -y nodejs
node --version && npm --version
npm install -g pnpm
pnpm --version
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
apt-get install -y rustc cargo
rustc --version && cargo --version
cargo install sccache
pnpm install
cargo test
rustup toolchain install nightly
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
rustup toolchain install nightly
source $HOME/.cargo/env
rustup toolchain install nightly
rustup override set nightly
cargo test

ps aux | grep cargo
cat target/debug/test_output.txt
cargo test > test_output.txt 2>&1
cat test_output.txt
apt-get install -y pkg-config
apt-get clean
apt-get install -y pkg-config
apt-get autoremove -y
apt-get install -y pkg-config
df -h
du -sh /var/log/* | sort -rh | head -n 10
du -sh /tmp/* | sort -rh | head -n 10
apt-get clean
apt-get autoremove -y

