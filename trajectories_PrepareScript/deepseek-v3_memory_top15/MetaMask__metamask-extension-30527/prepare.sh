ls -la
ls -la .github/workflows
open ".github/workflows/run-tests.yml"
open "package.json"
open ".nvmrc"
nvm install v22.13 && nvm use v22.13
curl -sL https://deb.nodesource.com/setup_22.x | bash - && apt-get install -y nodejs
curl -o node-v22.13-linux-x64.tar.xz https://nodejs.org/dist/v22.13.0/node-v22.13.0-linux-x64.tar.xz && tar -xf node-v22.13-linux-x64.tar.xz && sudo mv node-v22.13.0-linux-x64 /usr/local/node && sudo ln -sf /usr/local/node/bin/node /usr/local/bin/node && sudo ln -sf /usr/local/node/bin/npm /usr/local/bin/npm && sudo ln -sf /usr/local/node/bin/npx /usr/local/bin/npx
apt-get update && apt-get install -y curl
curl -o node-v22.13-linux-x64.tar.xz https://nodejs.org/dist/v22.13.0/node-v22.13.0-linux-x64.tar.xz && tar -xf node-v22.13-linux-x64.tar.xz && sudo mv node-v22.13.0-linux-x64 /usr/local/node && sudo ln -sf /usr/local/node/bin/node /usr/local/bin/node && sudo ln -sf /usr/local/node/bin/npm /usr/local/bin/npm && sudo ln -sf /usr/local/node/bin/npx /usr/local/bin/npx
apt-get install -y xz-utils
tar -xf node-v22.13-linux-x64.tar.xz && sudo mv node-v22.13.0-linux-x64 /usr/local/node && sudo ln -sf /usr/local/node/bin/node /usr/local/bin/node && sudo ln -sf /usr/local/node/bin/npm /usr/local/bin/npm && sudo ln -sf /usr/local/node/bin/npx /usr/local/bin/npx
tar -xf node-v22.13-linux-x64.tar.xz && mv node-v22.13.0-linux-x64 /usr/local/node && ln -sf /usr/local/node/bin/node /usr/local/bin/node && ln -sf /usr/local/node/bin/npm /usr/local/bin/npm && ln -sf /usr/local/node/bin/npx /usr/local/bin/npx
node --version && npm --version
npm install -g yarn
yarn --version
ln -sf /usr/local/node/bin/yarn /usr/local/bin/yarn
yarn --version
yarn install
corepack enable && corepack prepare yarn@4.5.1 --activate
npm install -g corepack
corepack enable && corepack prepare yarn@4.5.1 --activate
ln -sf /usr/local/node/bin/corepack /usr/local/bin/corepack
corepack --version
corepack enable && corepack prepare yarn@4.5.1 --activate
yarn --version
yarn install
yarn install --ignore-scripts
yarn install --no-postinstall
yarn cache clean
yarn install
yarn test:unit:coverage
open "ui/components/multichain/import-nfts-modal/import-nfts-modal.test.js"
edit 'describe('"'"'ImportNftsModal'"'"', () => {' 'jest.setTimeout(10000);

describe('"'"'ImportNftsModal'"'"', () => {'
open "shared/modules/transaction.utils.test.js"
edit 'describe('"'"'Transaction.utils'"'"', function () {' 'jest.setTimeout(10000);

describe('"'"'Transaction.utils'"'"', function () {'
open "ui/pages/confirmations/components/gas-details-item/gas-details-item.test.js"
edit 'describe('"'"'GasDetailsItem'"'"', () => {' 'jest.setTimeout(10000);

describe('"'"'GasDetailsItem'"'"', () => {'
yarn test:unit:coverage
open "test/helpers/foundry/foundryup.test.ts"
edit 'expect(result).toMatch(/^\/home\/.*\/.cache\/metamask$/u);' 'expect(result).toMatch(/^\/(home|root)\/.*\/.cache\/metamask$/u);'
goto 173
edit 'expect(result).toMatch(/^\/home\/.*\/.cache\/metamask$/u);' 'expect(result).toMatch(/^\/(home|root)\/.*\/.cache\/metamask$/u);'
yarn test:unit:coverage
edit 'expect(result).toMatch(/^\/(home|root)\/.*\/.cache\/metamask$/u);' 'expect(result).toMatch(/^\/(home\/.*|root)\/.cache\/metamask$/u);'
yarn test:unit:coverage
