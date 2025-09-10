ls -la
open "package.json"
ls -la .github/workflows
open ".github/workflows/turborepo-test.yml"
goto 200
open ".github/actions/setup-turborepo-environment/action.yml"
open ".github/actions/setup-node/action.yml"
apt-get update && apt-get install -y build-essential libssl-dev
apt-get install -y build-essential libssl-dev
curl -fsSL https://deb.nodesource.com/setup_22.x | bash - && apt-get install -y nodejs
apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_22.x | bash - && apt-get install -y nodejs
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
apt-get update && apt-get install -y ca-certificates && curl -fsSL https://deb.nodesource.com/setup_22.x | bash - && apt-get install -y nodejs
curl -fsSL https://deb.nodesource.com/setup_22.x | bash - && apt-get install -y nodejs
npm install -g pnpm
apt-get install -y nodejs npm
npm install -g pnpm
pnpm install
npm install -g pnpm@6
pnpm install
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
wget https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh && bash install.sh
apt-get install -y wget
wget https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh && bash install.sh
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm install 22 && nvm use 22
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm install 22.16.0 && nvm use 22.16.0
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm install 22.15.0 && nvm use 22.15.0
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm install 22.14.0 && nvm use 22.14.0
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm ls-remote | grep 22
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm install 22.0.0 && nvm use 22.0.0
node --version && npm --version
npm install -g pnpm
pnpm install
pnpm turbo run test
apt-get install -y graphviz sccache cargo
apt-get install -y graphviz cargo
cargo install sccache
pnpm turbo run test
rustup default nightly
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
apt-get install -y rustup
find /testbed -name Cargo.toml | grep turbo-trace
open "/testbed/crates/turbo-trace/Cargo.toml"
cat /testbed/crates/turbo-trace/Cargo.toml
edit 'edition = "2024"' 'edition = "2021"'
scroll_down
open "/testbed/crates/turbo-trace/Cargo.toml"
grep -n "edition =" /testbed/crates/turbo-trace/Cargo.toml

