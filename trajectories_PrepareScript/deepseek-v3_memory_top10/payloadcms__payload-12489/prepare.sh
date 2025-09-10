ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
open "package.json"
curl -fsSL https://get.pnpm.io/install.sh | sh -
apt-get update && apt-get install -y curl
curl -fsSL https://get.pnpm.io/install.sh | sh -
SHELL=bash curl -fsSL https://get.pnpm.io/install.sh | sh -
curl -fsSL https://get.pnpm.io/install.sh -o install-pnpm.sh && bash install-pnpm.sh
apt-get install -y nodejs npm
npm install -g pnpm@9.4.0
curl -sL https://deb.nodesource.com/setup_23.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode-dev && curl -sL https://deb.nodesource.com/setup_23.x | bash - && apt-get install -y nodejs
node --version && pnpm --version
pnpm install
pnpm i -g pnpm@9.7.1
pnpm setup
SHELL=bash pnpm setup

