ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/runtime_build_and_test.yml"
open ".nvmrc"
nvm install 18.20.1 && nvm use 18.20.1
apt-get update && apt-get install -y nodejs
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt-get update && apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt-get remove -y nodejs libnode72
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
npm install --global yarn
apt-get update && apt-get install -y openjdk-11-jdk build-essential
yarn install --frozen-lockfile
yarn config set registry https://registry.npmjs.org && yarn install
yarn build && yarn generate-inline-fizz-runtime
yarn test
