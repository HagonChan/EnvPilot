ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
open ".github/setup"
ls -la .github/setup
open ".github/setup/action.yml"
curl -fsSL https://get.pnpm.io/install.sh | sh -
apt-get update && apt-get install -y curl
curl -fsSL https://get.pnpm.io/install.sh | sh -
SHELL=bash curl -fsSL https://get.pnpm.io/install.sh | sh -
apt-get install -y nodejs
npm install -g pnpm
find / -name npm 2>/dev/null
export PATH=/nix/store/2djgcjvx3c183zcdprylsx9p1a6rmwwk-nodejs-20.18.3/bin:$PATH && npm install -g pnpm
pnpm --version
pnpm install
pnpm turbo --filter tests test-ci
