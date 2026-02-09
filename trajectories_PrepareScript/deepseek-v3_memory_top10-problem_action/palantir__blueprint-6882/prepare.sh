ls -la
open ".nvmrc"
node --version || echo "Node.js not installed"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
apt-get update && apt-get install -y curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
ping -c 4 github.com
apt-get install -y iputils-ping
ping -c 4 github.com
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
node --version
yarn --version || echo "Yarn not installed"
npm install -g yarn
yarn --version
yarn install
corepack enable
corepack prepare yarn@4.0.2 --activate
yarn --version
yarn install
open "package.json"
yarn test
nx view-logs
yarn nx view-logs
ls -la packages/core
ls -la packages/core/test
yarn nx test @blueprintjs/core
apt-get update && apt-get install -y chromium-browser
export CHROME_BIN=/usr/bin/chromium-browser && yarn nx test @blueprintjs/core
yarn nx reset
export CHROME_BIN=/usr/bin/chromium-browser && yarn nx test @blueprintjs/core
snap install chromium
apt-get update && apt-get install -y snapd
systemctl start snapd
snapd
snap install chromium
apt-get update && apt-get install -y chromium-browser
export CHROME_BIN=/usr/bin/chromium-browser && yarn nx test @blueprintjs/core
find_file karma.conf.js
open "/testbed/packages/core/karma.conf.js"
find_file karma-build-scripts
ls -la node_modules/@blueprintjs/karma-build-scripts
open "/testbed/packages/karma-build-scripts/index.js"
ls -la packages/karma-build-scripts
open "/testbed/packages/karma-build-scripts/createKarmaConfig.mjs"
edit 'browsers: ["ChromeHeadless"],' 'browsers: ["ChromiumHeadless"],'
npm list karma-chrome-launcher
edit 'plugins: [
            "karma-webpack",
            "karma-mocha",
            require("karma-coverage"),
            require("karma-helpful-reporter"),
            require("karma-junit-reporter"),
            "karma-sourcemap-loader",
            "karma-chrome-launcher",
        ],' 'plugins: [
            "karma-webpack",
            "karma-mocha",
            require("karma-coverage"),
            require("karma-helpful-reporter"),
            require("karma-junit-reporter"),
            "karma-sourcemap-loader",
            "karma-chrome-launcher",
        ],
        customLaunchers: {
            ChromiumHeadless: {
                base: "ChromeHeadless",
                flags: ["--no-sandbox", "--disable-gpu"],
            },
        },'
export CHROME_BIN=/usr/bin/chromium-browser && yarn nx test @blueprintjs/core

