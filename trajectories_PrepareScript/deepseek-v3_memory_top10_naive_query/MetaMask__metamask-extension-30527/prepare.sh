ls -la
ls -la .github/workflows
open ".github/workflows/run-tests.yml"
open "package.json"
yarn install
node --version
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
apt-get remove -y nodejs && curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
apt-get update && apt-get install -y curl
apt-get remove -y nodejs && curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
node --version
npm install -g yarn
yarn --version
yarn install
corepack enable && corepack prepare yarn@4.5.1 --activate
yarn --version
yarn install
yarn add -W -D browserslist@latest caniuse-lite@latest
yarn add -D browserslist@latest caniuse-lite@latest
npx update-browserslist-db@latest
yarn test:unit:coverage
yarn test:unit:webpack:coverage
yarn test:integration:coverage
