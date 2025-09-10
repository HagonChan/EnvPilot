ls -la
ls -la .github/workflows
ls -la .circleci
open ".circleci/config.yml"
open "package.json"
node --version
apt-get update && apt-get install -y nodejs
curl -fsSL https://deb.nodesource.com/setup_20.x | bash -
apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_20.x | bash -
apt-get install -y nodejs
node --version && npm --version
npm install -g yarn
yarn --version
npm install -g yarn@4.0.2
npm install -g yarn@latest
yarn --version
yarn set version 4.0.2
corepack enable
corepack prepare yarn@4.0.2 --activate
yarn --version
yarn install --immutable
yarn compile --parallel=7
yarn lint
yarn format-check
yarn test
nx view-logs
yarn nx view-logs
yarn nx test @blueprintjs/core
apt-get install -y chromium-browser
export CHROME_BIN=/usr/bin/chromium-browser
yarn nx test @blueprintjs/core
yarn nx reset
yarn nx test @blueprintjs/core
snap install chromium
apt-get install -y snapd
systemctl start snapd
apt-get install -y chromium-browser
export CHROME_BIN=/usr/bin/chromium-browser
yarn nx test @blueprintjs/core
apt-get install -y firefox
find_file karma.conf.js
open "/testbed/packages/core/karma.conf.js"
find_file karma-build-scripts
ls -la node_modules/@blueprintjs/karma-build-scripts
open "packages/karma-build-scripts"
ls -la packages/karma-build-scripts
open "packages/karma-build-scripts/createKarmaConfig.mjs"
ls -la node_modules/karma-firefox-launcher

