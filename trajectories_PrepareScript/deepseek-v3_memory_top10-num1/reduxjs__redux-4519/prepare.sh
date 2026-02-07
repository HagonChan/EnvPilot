ls -la
open "package.json"
ls -la .github
ls -la .github/workflows
open ".github/workflows/test.yaml"
node --version
curl -sL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
apt-get install -y curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm install 16
node --version
yarn --version
npm install -g yarn
yarn --version
yarn install
yarn test
NODE_OPTIONS=--max-old-space-size=4096 yarn test
open "vitest.config.ts"
yarn test --threads=1
ls -la README*
open "README.md"
yarn test --debug
yarn test --verbose
