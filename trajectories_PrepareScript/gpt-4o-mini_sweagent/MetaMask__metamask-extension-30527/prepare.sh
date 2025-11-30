find_file '*.yml' .
open "/testbed/.github/workflows/run-tests.yml"
open "package.json"
find_file yarn.lock .
yarn install
apt update
apt install -y yarn
yarn install
curl -sL https://deb.nodesource.com/setup_16.x | bash - && apt install -y nodejs yarn
yarn install
npm install -g yarn
apt install -y nodejs npm
npm install -g yarn
yarn install
yarn install --no-progress
npm install
export TERM=xterm && yarn install
(export TERM=xterm && yarn install)
create install_dependencies.sh
open "install_dependencies.sh"
edit '' '#!/bin/bash
export TERM=xterm
yarn install'
chmod +x install_dependencies.sh
./install_dependencies.sh
corepack enable
npm install -g yarn@4.5.1
open "install_dependencies.sh"
./install_dependencies.sh
npm install -g corepack
npm uninstall -g yarn
npm install -g yarn
./install_dependencies.sh
curl -o- -L https://github.com/yarnpkg/yarn/releases/download/v4.5.1/yarn-4.5.1.tar.gz | tar xz -C /usr/local/bin
wget https://github.com/yarnpkg/yarn/releases/download/v4.5.1/yarn-4.5.1.tar.gz
npm install -g yarn@4.5.1
git clone https://github.com/yarnpkg/yarn.git
cd yarn && npm install && npm run build
npm install --legacy-peer-deps
yarn test:unit:coverage
open "package.json"
scroll_down
yarn test-coverage
yarn test-only
node node_modules/jest/bin/jest.js --verbose
find_file __tests__ .
