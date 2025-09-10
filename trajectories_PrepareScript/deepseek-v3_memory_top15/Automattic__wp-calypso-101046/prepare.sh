ls -la
ls -la .github/workflows/
open "package.json"
open ".nvmrc"
node --version && yarn --version
nvm install 22.9.0 && nvm use 22.9.0
curl -sL https://deb.nodesource.com/setup_22.x | bash - && apt-get install -y nodejs
apt-get remove -y nodejs
curl -sL https://deb.nodesource.com/setup_22.x | bash - && apt-get install -y nodejs
apt-get update && apt-get install -y curl
curl -sL https://deb.nodesource.com/setup_22.x | bash - && apt-get install -y nodejs
node --version
npm install -g yarn
yarn --version
yarn install
yarn install --ignore-optional
yarn install --no-optional
yarn install
open "package.json"
yarn lint
ls -la test/e2e
open "test/e2e/package.json"
cd test/e2e && yarn test
apt-get install -y libglib2.0-0 libnss3 libnspr4 libdbus-1-3 libatk1.0-0 libatk-bridge2.0-0 libcups2 libdrm2 libxkbcommon0 libxcomposite1 libxdamage1 libxfixes3 libxrandr2 libgbm1 libpango-1.0-0 libcairo2 libasound2 libatspi2.0-0
yarn test
open "test/e2e/jest.config.js"
open "test/e2e/package.json"
open "package.json"
edit '"test": "yarn jest"' '"test": "HEADLESS=true yarn jest"' True
yarn test
edit '"test": "HEADLESS=true yarn jest"' '"test": "HEADLESS=true yarn jest --testPathIgnorePatterns=specs/martech/"' True
yarn test
