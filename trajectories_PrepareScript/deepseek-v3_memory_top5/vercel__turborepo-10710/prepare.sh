ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/turborepo-test.yml"
goto 200
ls -la .github/actions/setup-turborepo-environment
open ".github/actions/setup-turborepo-environment/action.yml"
ls -la .github/actions/setup-node
open ".github/actions/setup-node/action.yml"
open "package.json"
curl -fsSL https://deb.nodesource.com/setup_22.x | bash - && apt-get install -y nodejs
apt-get update && apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_22.x | bash - && apt-get install -y nodejs
apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_22.x | bash - && apt-get install -y nodejs
apt-get remove -y nodejs && apt-get autoremove -y
curl -fsSL https://deb.nodesource.com/setup_22.x | bash - && apt-get install -y nodejs
node --version
apt-get update && apt-get install -y graphviz sccache cargo libssl-dev build-essential
cargo --version
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env
cargo install sccache
apt-get install -y graphviz libssl-dev build-essential
npm install -g pnpm
pnpm install
pnpm install
pnpm test
npm install -g turbo
pnpm test
apt-get install -y rsync
pnpm test
npm install -g yarn
pnpm test
