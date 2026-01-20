ls -la
open ".nvmrc"
open "package.json"
search_file engines package.json
goto 695
find_file '*.yml' .github/workflows
open ".github/workflows/run-tests.yml"
search_dir setup-environment .github
search_file test package.json
nvm install 20.17.0 && nvm use 20.17.0
curl -sL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
curl -o node-v20.17.0-linux-x64.tar.xz https://nodejs.org/dist/v20.17.0/node-v20.17.0-linux-x64.tar.xz && tar -xf node-v20.17.0-linux-x64.tar.xz && sudo mv node-v20.17.0-linux-x64 /usr/local/node && sudo ln -sf /usr/local/node/bin/node /usr/local/bin/node && sudo ln -sf /usr/local/node/bin/npm /usr/local/bin/npm
apt-get update && apt-get install -y curl
curl -o node-v20.17.0-linux-x64.tar.xz https://nodejs.org/dist/v20.17.0/node-v20.17.0-linux-x64.tar.xz && tar -xf node-v20.17.0-linux-x64.tar.xz && sudo mv node-v20.17.0-linux-x64 /usr/local/node && sudo ln -sf /usr/local/node/bin/node /usr/local/bin/node && sudo ln -sf /usr/local/node/bin/npm /usr/local/bin/npm
apt-get install -y xz-utils
curl -o node-v20.17.0-linux-x64.tar.xz https://nodejs.org/dist/v20.17.0/node-v20.17.0-linux-x64.tar.xz && tar -xf node-v20.17.0-linux-x64.tar.xz && sudo mv node-v20.17.0-linux-x64 /usr/local/node && sudo ln -sf /usr/local/node/bin/node /usr/local/bin/node && sudo ln -sf /usr/local/node/bin/npm /usr/local/bin/npm
curl -o node-v20.17.0-linux-x64.tar.xz https://nodejs.org/dist/v20.17.0/node-v20.17.0-linux-x64.tar.xz && tar -xf node-v20.17.0-linux-x64.tar.xz && mv node-v20.17.0-linux-x64 /usr/local/node && ln -sf /usr/local/node/bin/node /usr/local/bin/node && ln -sf /usr/local/node/bin/npm /usr/local/bin/npm
node --version
yarn --version
npm install -g yarn
yarn --version
npm list -g yarn
export PATH=$PATH:/usr/local/node/bin && yarn --version
yarn install
corepack enable && corepack prepare yarn@4.5.1 --activate
yarn --version
yarn install
yarn test:unit
grep -A 10 -B 10 'FAIL' $(find . -name '*.test.js' -o -name '*.test.ts' -o -name '*.test.tsx')
open "./ui/store/actions.test.js"
goto 92
open "./ui/store/actions.js"
find_file actions.js .
open "./ui/__mocks__/actions.js"
find_file '**/actions.js' .
search_file 'import.*actions' ./ui/store/actions.test.js
find_file '**/build.js' .
search_file build package.json
yarn build:dev
yarn build:dev dev
find_file builds.yml .
open "builds.yml"
export INFURA_PROJECT_ID='dummy-value' && yarn build:dev dev
export INFURA_PROJECT_ID='dummy-value' && yarn build:dev test
yarn test:unit
grep -A 10 -B 10 'FAIL' $(find . -name '*.test.js' -o -name '*.test.ts' -o -name '*.test.tsx')
find_file '**/actions.js' ./build

find_file '**/actions.js' ./dist

