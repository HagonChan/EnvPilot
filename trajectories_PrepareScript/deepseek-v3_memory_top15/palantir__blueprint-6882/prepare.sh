ls -la
ls -la .github/workflows
ls -la .circleci
open ".circleci/config.yml"
scroll_down
node --version
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
apt-get update && apt-get install -y curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm install 20.11
node --version
nvm use 20.11
nvm install --lts
nvm install 20.11.0
node --version
corepack enable
yarn install --immutable
yarn nx test:karma @blueprintjs/core
yarn nx run-many -t test:typeCheck
yarn nx run-many -t lint
grep "@blueprintjs/stylelint-plugin" package.json
find . -name "*.stylelintrc*" -o -name "*.eslintrc*"
open ".stylelintrc"
ls -la packages/stylelint-plugin
yarn install --force
yarn cache clean && yarn install
ls -la node_modules/@blueprintjs/stylelint-plugin
yarn nx run-many -t lint
edit '"plugins": [
    "@blueprintjs/stylelint-plugin"
  ]' '"plugins": [
    "@blueprintjs/stylelint-plugin"
  ],
  "configBasedir": "."'
yarn nx run-many -t lint
node -e "require('@blueprintjs/stylelint-plugin')"
open "packages/stylelint-plugin/package.json"
cd packages/stylelint-plugin && yarn compile && cd ../..
ls -la packages/stylelint-plugin/lib
yarn nx run-many -t lint
ls -la packages/eslint-plugin
cd packages/eslint-plugin && yarn compile && cd ../..
ls -la packages/eslint-plugin/lib
yarn nx run-many -t lint
yarn nx test:karma @blueprintjs/core
apt-get install -y chromium && export CHROME_BIN=/usr/bin/chromium
apt-get install -y chromium-browser && export CHROME_BIN=/usr/bin/chromium-browser
yarn nx test:karma @blueprintjs/core
snap install chromium && export CHROME_BIN=/snap/bin/chromium
apt-get update && apt-get install -y snapd
systemctl start snapd && snap install chromium && export CHROME_BIN=/snap/bin/chromium
which chromium-browser
export CHROME_BIN=/usr/bin/chromium-browser && yarn nx test:karma @blueprintjs/core

