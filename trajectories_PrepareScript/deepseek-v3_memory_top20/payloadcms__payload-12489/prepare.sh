ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
open "package.json"
apt-get update && apt-get install -y curl && curl -fsSL https://get.pnpm.io/install.sh | sh -
SHELL=bash curl -fsSL https://get.pnpm.io/install.sh | sh -
apt-get install -y nodejs
node --version && npm --version
curl -fsSL https://deb.nodesource.com/setup_23.x | bash - && apt-get install -y nodejs
node --version && npm --version
npm install -g pnpm@9.7.1
pnpm --version
apt-get install -y postgresql mongodb chromium
apt-get install -y mongodb-org chromium-browser
apt-get install -y wget && wget -qO - https://www.mongodb.org/static/pgp/server-7.0.asc | apt-key add - && echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/7.0 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-7.0.list && apt-get update && apt-get install -y mongodb-org
apt-get install -y gnupg && wget -qO - https://www.mongodb.org/static/pgp/server-7.0.asc | gpg --dearmor | tee /usr/share/keyrings/mongodb-archive-keyring.gpg > /dev/null && echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-archive-keyring.gpg ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/7.0 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-7.0.list && apt-get update && apt-get install -y mongodb-org
apt-get install -y chromium-browser
pnpm install
pnpm exec playwright install
pnpm exec playwright install-deps
pnpm pretest
pnpm test
node --version && npm --version && pnpm --version
pnpm install
pnpm test --verbose
pnpm test:eslint
pnpm test:int
pnpm test:mocha
pnpm test:e2e
open "tsconfig.json"
open "tsconfig.base.json"
create tsconfig.test.json
edit '' '{
  "extends": "./tsconfig.base.json",
  "compilerOptions": {
    "stripInternal": false
  }
}'
open "package.json"
edit '"runts": "cross-env NODE_OPTIONS=--no-deprecation node --no-deprecation --import @swc-node/register/esm-register"' '"runts": "cross-env NODE_OPTIONS=--no-deprecation node --no-deprecation --import @swc-node/register/esm-register --project tsconfig.test.json"'
pnpm test:int
pnpm test:components
ls -la jest.components.config.js
pnpm test:e2e
edit '"runts": "cross-env NODE_OPTIONS=--no-deprecation node --no-deprecation --import @swc-node/register/esm-register --project tsconfig.test.json"' '"runts": "cross-env NODE_OPTIONS=--no-deprecation node --no-deprecation --import @swc-node/register/esm-register"'
pnpm test:e2e
