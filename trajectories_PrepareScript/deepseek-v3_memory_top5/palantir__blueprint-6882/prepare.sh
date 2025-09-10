ls -la
ls -la .github/workflows
ls -la .circleci
open ".circleci/config.yml"
open "package.json"
node --version
apt-get install -y nodejs
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
apt-get install -y curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
nvm install 20.11.1 && nvm use 20.11.1
node --version
npm install -g yarn@4.0.2
npm view yarn versions
corepack enable
corepack prepare yarn@4.0.2 --activate
yarn --version
yarn install --immutable
yarn test
nx view-logs
yarn nx view-logs
ls -la
ls -la .nx
ls -la .nx/cache
ls -la .nx/cache/terminalOutputs
cat .nx/cache/terminalOutputs/10412331327674710407
apt-get install -y chromium-browser
apt-get update
apt-get install -y chromium-browser
export CHROME_BIN=/usr/bin/chromium-browser
yarn test
yarn nx reset
yarn test
yarn nx view-logs
ls -la .nx/cache/terminalOutputs
cat .nx/cache/terminalOutputs/10412331327674710407
snap install chromium
apt-get install -y wget
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list
apt-get update
apt-get install -y google-chrome-stable
export CHROME_BIN=/usr/bin/google-chrome-stable
yarn test
yarn nx view-logs
ls -la .nx/cache/terminalOutputs
cat .nx/cache/terminalOutputs/10412331327674710407
find_file karma.conf.js

