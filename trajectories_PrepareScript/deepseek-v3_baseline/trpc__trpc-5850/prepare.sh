ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
open ".github/setup"
ls -la .github/setup
open ".github/setup/action.yml"
curl -fsSL https://get.pnpm.io/install.sh | sh -
export SHELL=/bin/bash && curl -fsSL https://get.pnpm.io/install.sh | sh -
source /root/.bashrc
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm install 20
node --version && npm --version
pnpm install
pnpm install
export PLAYWRIGHT_SKIP_BROWSER_DOWNLOAD=1 && pnpm install
pnpm test-ci
pnpm test-ci
open "packages/tests/server/httpSubscriptionLink.test.ts"
open "packages/tests/server/websockets.test.ts"
DEBUG=ws* pnpm test-ci
