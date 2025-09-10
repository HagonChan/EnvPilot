ls -la
ls -la .github/workflows
open ".github/workflows/runtime_build_and_test.yml"
open ".nvmrc"
nvm install 18.20.1 && nvm use 18.20.1
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt-get update && apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode72 && apt-get install -y nodejs
dpkg --force-all -r libnode72 && apt-get install -y nodejs
node --version
npm install -g yarn
yarn --version
yarn install --frozen-lockfile
yarn cache clean && yarn install --frozen-lockfile
ELECTRON_SKIP_BINARY_DOWNLOAD=1 yarn install --frozen-lockfile
ls -la node_modules
yarn playwright install
yarn test
open "packages/react-dom/src/events/plugins/__tests__/BeforeInputEventPlugin-test.js"
goto 769
search_file environments packages/react-dom/src/events/plugins/__tests__/BeforeInputEventPlugin-test.js
goto 196
yarn list jsdom
yarn add jsdom@20.0.0
cd packages/react-dom && yarn add jsdom@20.0.0
open "packages/react-dom/package.json"
ls -la
open "packages/react-dom/package.json"
cd /testbed && ls -la packages/react-dom
open "packages/react-dom/package.json"
edit '"devDependencies": {' '"devDependencies": {
    "jsdom": "20.0.0",' False
search_file devDependencies packages/react-dom/package.json
edit '"dependencies": {
    "scheduler": "^0.23.0"
  },
  "peerDependencies": {
    "react": "^19.0.0"
  },
  "files": [' '"dependencies": {
    "scheduler": "^0.23.0"
  },
  "devDependencies": {
    "jsdom": "20.0.0"
  },
  "peerDependencies": {
    "react": "^19.0.0"
  },
  "files": ['
cd packages/react-dom && yarn install
cd /testbed && yarn test
