ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
open "package.json"
node --version && npm --version
curl -sL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
nvm --version
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
apt-get install -y curl
apt-get update
apt-get install -y curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
nvm install 16 && nvm use 16
node --version && npm --version
npm ci
npm test
