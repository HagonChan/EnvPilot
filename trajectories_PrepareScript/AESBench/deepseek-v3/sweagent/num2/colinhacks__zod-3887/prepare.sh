ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
node --version && yarn --version
apt-get update && apt-get install -y nodejs yarn
node --version && yarn --version
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
apt-get install -y curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
nvm install --lts
node --version && yarn --version
yarn install
apt-get install -y ncurses-term
yarn install
npm --version
npm install
npm run build
open "package.json"
edit 'yarn run clean && npm run build:cjs && npm run build:esm && npm run build:deno' 'npm run clean && npm run build:cjs && npm run build:esm && npm run build:deno'
edit 'yarn test:ts-jest' 'npm run test:ts-jest'
edit '"test": "yarn test:ts-jest",' '"test": "npm run test:ts-jest",'
npm run build
npm test
