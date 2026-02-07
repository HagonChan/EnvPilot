ls -la
open "package.json"
find_file '.github/workflows/*.yml'
find_file .circleci/config.yml
open "jest.config.js"
search_file '"engines"' package.json
goto 695
open "package.json" 695
node --version
curl -fsSL https://deb.nodesource.com/setup_20.x | bash -
apt-get update && apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
node --version
yarn --version
npm install -g yarn
yarn --version
npm install -g yarn@4.4.1
yarn install
corepack enable
corepack prepare yarn@4.5.1 --activate
yarn --version
yarn install
yarn cache clean
yarn install
search_file '"scripts"' package.json
goto 9
yarn dedupe
yarn install --ignore-engines
yarn cache clean
yarn install
open "package.json"
yarn info @metamask/providers versions
yarn npm info @metamask/providers versions
search_file '"dependencies"' package.json
goto 266
edit '"@metamask/providers": "patch:@metamask/providers@npm%3A19.0.0#~/.yarn/patches/@metamask-providers-npm-19.0.0-3d962c6f1a.patch"' '"@metamask/providers": "^22.1.1"'
yarn cache clean
yarn install
yarn info @metamask/accounts-controller versions
search_file '"@metamask/accounts-controller"' package.json
yarn info @metamask/transaction-controller versions
yarn install --frozen-lockfile
yarn install --ignore-engines
yarn install --no-lockfile
yarn install --mode=skip-build
open "yarn.lock"
rm yarn.lock
yarn install
yarn test

