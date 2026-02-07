ls -la
ls -la .github/workflows
open ".github/workflows/run-tests.yml"
open "package.json"
yarn install
npm install -g yarn
apt-get update && apt-get install -y nodejs npm
npm install -g yarn
yarn install
corepack enable
node --version
curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - && apt-get install -y nodejs
apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode-dev && apt-get install -y nodejs
node --version && npm --version
corepack enable
yarn set version stable
corepack prepare yarn@4.5.1 --activate
yarn --version
yarn set version 4.5.1
npm install -g yarn@4.5.1
yarn install
curl -o- -L https://yarnpkg.com/install.sh | bash -s -- --version 4.5.1
corepack prepare yarn@stable --activate
yarn --version
which yarn
export PATH="$(dirname $(which corepack)):$PATH" && yarn --version
yarn install
yarn install --force
yarn install --check-cache
yarn up
open "package.json"
cat package.json
yarn up @metamask/providers
yarn up @metamask/transaction-controller
yarn up typescript
open "package.json"
cat package.json
edit '"@metamask/providers": "19.0.0"' '"@metamask/providers": "22.1.1"'
search_file @metamask/providers package.json
edit '"@metamask/providers": "patch:@metamask/providers@npm%3A19.0.0#~/.yarn/patches/@metamask-providers-npm-19.0.0-3d962c6f1a.patch"' '"@metamask/providers": "22.1.1"'
goto 345
edit '"@metamask/providers": "patch:@metamask/providers@npm%3A19.0.0#~/.yarn/patches/@metamask-providers-npm-19.0.0-3d962c6f1a.patch"' '"@metamask/providers": "22.1.1"'
search_file @metamask/transaction-controller package.json
goto 361
edit '"@metamask/transaction-controller": "^45.0.0"' '"@metamask/transaction-controller": "62.12.0"'
search_file typescript package.json
goto 678

