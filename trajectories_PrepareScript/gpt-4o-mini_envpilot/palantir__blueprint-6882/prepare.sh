
ls -la
open ".circleci/config.yml"
nvm install 21.7.3 && nvm use 21.7.3
apt-get install -y nodejs
apt-get update && apt-get install -y build-essential chromium
apt-get install -y chromium-browser
yarn install
npm install -g yarn
apt-get update && apt-get install -y nodejs npm
npm install -g yarn
yarn install
corepack enable
npm install -g yarn@4.0.2
npm install -g yarn
yarn install
yarn set version 4.0.2
npm install -g yarn@^4.0.0
yarn set version 4.0.2
yarn install --ignore-engines
curl -o- -L https://yarnpkg.com/install.sh | bash
wget -qO- https://yarnpkg.com/install.sh | bash
yarn karma start test/karma.conf.js
