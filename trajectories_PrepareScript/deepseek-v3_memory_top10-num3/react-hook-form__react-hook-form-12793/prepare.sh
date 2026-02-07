ls -la
ls -la .github/workflows
open ".github/workflows/build-test.yml"
open ".github/actions/install-dependencies/action.yml"
pnpm --version
curl -fsSL https://get.pnpm.io/install.sh | sh -
apt-get update && apt-get install -y curl
curl -fsSL https://get.pnpm.io/install.sh | sh -
export SHELL=/bin/bash && curl -fsSL https://get.pnpm.io/install.sh | sh -
export SHELL=/bin/bash && curl -fsSL https://get.pnpm.io/install.sh | sh -
apt-get install -y nodejs npm
npm --version
npm install -g pnpm
pnpm --version
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm install 20.11.1
node --version && npm --version && pnpm --version
pnpm install --frozen-lockfile
pnpm run test --ci
pnpm type
