ls -la
ls -la .github/workflows
open ".github/workflows/test.yaml"
node --version
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
node --version
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
apt-get update && apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode72 && curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
dpkg --force-overwrite -i /var/cache/apt/archives/nodejs_16.20.2-1nodesource1_amd64.deb
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm install 16
node --version
npm install -g yarn
yarn --version
yarn install
yarn build
yarn test
yarn test --maxWorkers=1
open "vitest.config.ts"
NODE_OPTIONS="--max-old-space-size=512" yarn test
yarn test --help
yarn test --no-threads
