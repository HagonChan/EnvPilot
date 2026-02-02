ls -la
ls -la .github/workflows
open "package.json"
open ".nvmrc"
node --version && yarn --version
curl -fsSL https://deb.nodesource.com/setup_22.x | bash - && apt-get install -y nodejs
node --version && yarn --version
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
apt-get install -y curl
apt-get update && apt-get install -y curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" && nvm install 22.9.0
node --version
nvm use 22.9.0
nvm install 22.9.0
node --version
npm install -g yarn@4.0.0
npm view yarn versions
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && apt-get update && apt-get install -y yarn
apt-get install -y gnupg
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && apt-get update && apt-get install -y yarn
yarn --version && yarn set version stable
node --version && yarn --version
yarn install
cat /tmp/xfs-fea53bd4/build.log
yarn cache clean && yarn install
yarn test
yarn test --verbose
ls -la test-results
open "package.json"
grep -r "Test Suites: 1 failed" .
