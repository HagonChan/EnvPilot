ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
open "package.json"
node --version
curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - && apt-get install -y nodejs
node --version
yarn --version
npm install -g yarn
which npm
apt-get install -y npm
npm install -g yarn
yarn --version
yarn --frozen-lockfile
apt-get remove -y nodejs && curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
node --version
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
apt-get install -y curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
nvm install 18.18.0
node --version
yarn --version
yarn --frozen-lockfile
nvm install 20.9.0
node --version
yarn --frozen-lockfile
nvm install 20.10.0
node --version
yarn --frozen-lockfile
nvm install 20.12.0
node --version
yarn --frozen-lockfile
nvm install 20.17.0
node --version
yarn --frozen-lockfile
yarn test:basic
yarn test:basic --detectOpenHandles
yarn test:basic --testTimeout=60000
