ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
open ".github/workflows/call-core-tests.yml"
node --version
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
apt-get install -y curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm install 18.18.0
node --version && npm --version
npm ci
npm run test-unit
