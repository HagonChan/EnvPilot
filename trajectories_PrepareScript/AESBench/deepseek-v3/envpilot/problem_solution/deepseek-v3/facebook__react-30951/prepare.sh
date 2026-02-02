ls -la
ls -la .github/workflows
open ".github/workflows/runtime_build_and_test.yml"
open ".nvmrc"
open "package.json"
goto 120
apt-get update && apt-get install -y git tar gzip nodejs npm yarn java-11.0.22 playwright-deps
apt-get install -y openjdk-11-jdk
npx playwright install-deps
node --version && npm --version
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
apt-get install -y curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
apt-get install -y ca-certificates && curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
node --version && npm --version
npm install -g yarn
yarn --version
yarn install --frozen-lockfile
npx playwright install
yarn test

