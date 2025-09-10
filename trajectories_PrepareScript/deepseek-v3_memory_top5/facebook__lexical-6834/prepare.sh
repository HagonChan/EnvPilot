ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
open ".github/workflows/call-core-tests.yml"
open "package.json"
nvm --version
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
apt-get update && apt-get install -y curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
nvm install 20.11.0
node --version && npm --version
npm ci
npm run test-unit
npm run test-e2e-chromium
