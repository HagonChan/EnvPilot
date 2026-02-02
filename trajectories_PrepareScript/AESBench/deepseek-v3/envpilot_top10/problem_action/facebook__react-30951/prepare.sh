ls -la
ls -la .github/workflows
open ".github/workflows/runtime_build_and_test.yml"
open ".nvmrc"
nvm --version
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
apt-get update && apt-get install -y curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm install 18.20.1 && nvm use 18.20.1
node --version && yarn --version
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && node --version && yarn --version
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm install 18.20.1 && nvm use 18.20.1
node --version && yarn --version
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
node --version && yarn --version
npm install -g yarn
yarn --version
yarn install --frozen-lockfile
yarn build
apt-get install -y openjdk-11-jdk
yarn build
yarn generate-inline-fizz-runtime
open "package.json"
grep -A 10 "scripts" package.json
yarn test
open "packages/react-dom/src/events/plugins/__tests__/BeforeInputEventPlugin-test.js"
yarn test --verbose
