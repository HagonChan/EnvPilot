ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
open ".github/workflows/call-core-tests.yml"
node --version || echo "Node.js not installed"
nvm --version || echo "nvm not installed"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
apt-get install -y curl
apt-get update
apt-get install -y curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
nvm install 18.18.0 && nvm use 18.18.0
node --version && npm --version
npm ci
npm install --legacy-peer-deps
npm run test-unit
