ls -la
ls -la .github/workflows
open ".github/workflows/test.yaml"
node --version
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
apt-get install -y curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm install 16
apt-get install -y python
apt-get install -y python-is-python3
apt-get update && apt-get install -y python-is-python3
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm install 16
apt-get install -y build-essential
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm install 16
node --version && npm --version
yarn --version
npm install -g yarn
yarn --version
yarn install
yarn test
NODE_OPTIONS="--max-old-space-size=4096" yarn test
open "vitest.config.ts"
yarn test --no-threads
