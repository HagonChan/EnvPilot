
find . -name '*.yml' -o -name '*.yaml' -o -name '*.gitlab-ci.yml' -o -name 'Jenkinsfile' -o -name 'azure-pipelines.yml' -o -name 'circleci/config.yml'
open ".github/workflows/test.yml"
find . -name 'package.json'
open "package.json"
yarn install --frozen-lockfile
apt-get update && apt-get install -y yarn
yarn install --frozen-lockfile
yarn install
npm install -g yarn
apt-get install -y nodejs npm
npm install -g yarn
yarn install
bash -c 'yarn install'
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
apt-get install -y curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
apt-get install -y nodejs=18.*
apt-cache showpkg nodejs
apt-get remove -y nodejs
curl -fsSL https://deb.nodesource.com/setup_18.x | bash -
apt install -y nodejs
apt-get remove -y libnode-dev
apt install -y nodejs
apt-get remove -y libnode72
apt install -y nodejs
npm install -g yarn
rm -rf /usr/bin/yarn
npm install -g yarn
yarn install
curl -fsSL https://deb.nodesource.com/setup_20.x | bash -
apt install -y nodejs
yarn install
yarn test:basic --ci
open "test/Cli.basictest.js"
open "../index.js"
ls ..
ls /testbed
ls lib
open "lib/cli.js"
grep -n 'processArguments' lib/cli.js
goto 670
open "test/Cli.basictest.js"
grep -n 'async' lib/cli.js
tail -n 20 test_output.log
yarn test:basic --ci
yarn test:basic --ci --detectOpenHandles
find . -name 'Makefile' -o -name 'tox.ini'
open "README.md"

