ls -la
ls -la .github/workflows
ls -la .circleci
open ".circleci/config.yml"
open "package.json"
node --version
nvm --version
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
apt-get update && apt-get install -y curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
nvm install 20.11
node --version && npm --version
npm install -g yarn
yarn --version
yarn set version 4.0.2
corepack enable
yarn set version 4.0.2
yarn --version
yarn install --immutable
yarn test
nx view-logs
./node_modules/.bin/nx view-logs
cat ./dist/apps/core/test.log
ls -la ./dist
yarn nx run @blueprintjs/core:test
apt-get update && apt-get install -y wget && wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - && echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list && apt-get update && apt-get install -y google-chrome-stable
apt-get install -y gnupg
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - && echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list && apt-get update && apt-get install -y google-chrome-stable
export CHROME_BIN=/usr/bin/google-chrome-stable && yarn nx run @blueprintjs/core:test
yarn nx reset && yarn nx run @blueprintjs/core:test
find_file karma.conf.js
open "/testbed/packages/core/karma.conf.js"
cat /testbed/packages/core/karma.conf.js
find . -name "karma-build-scripts" -type d
open "./packages/karma-build-scripts/src/index.ts"
ls -la ./packages/karma-build-scripts
open "./packages/karma-build-scripts/createKarmaConfig.mjs"
cat ./packages/karma-build-scripts/createKarmaConfig.mjs
edit 'browsers: ["ChromeHeadless"],' 'browsers: ["ChromeHeadlessNoSandbox"],
        customLaunchers: {
            ChromeHeadlessNoSandbox: {
                base: "ChromeHeadless",
                flags: ["--no-sandbox"],
            },
        },'
open "./packages/karma-build-scripts/createKarmaConfig.mjs"
edit 'browsers: ["ChromeHeadless"],' 'browsers: ["ChromeHeadlessNoSandbox"],
        customLaunchers: {
            ChromeHeadlessNoSandbox: {
                base: "ChromeHeadless",
                flags: ["--no-sandbox"],
            },
        },'
open "./packages/karma-build-scripts/createKarmaConfig.mjs"
cat ./packages/karma-build-scripts/createKarmaConfig.mjs | grep -A 5 "browsers"
edit 'browsers: ["ChromeHeadless"],' 'browsers: ["ChromeHeadlessNoSandbox"],
        customLaunchers: {
            ChromeHeadlessNoSandbox: {
                base: "ChromeHeadless",
                flags: ["--no-sandbox"]
            }
        },'
open "./packages/karma-build-scripts/createKarmaConfig.mjs"
cat ./packages/karma-build-scripts/createKarmaConfig.mjs | grep -A 5 "browsers"
edit 'browsers: ["ChromeHeadless"],' 'browsers: ["ChromeHeadlessNoSandbox"],
        customLaunchers: {
            ChromeHeadlessNoSandbox: {
                base: "ChromeHeadless",
                flags: ["--no-sandbox"],
            },
        },'
open "./packages/karma-build-scripts/createKarmaConfig.mjs"

