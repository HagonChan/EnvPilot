ls -la
ls -la .github/workflows
open ".github/workflows/nodejs.yml"
open ".nvmrc"
command -v nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
apt-get update && apt-get install -y curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
nvm install 22.11.0
node --version && npm --version
npm ci
npm run lint-errors
npm run test:unit
npm run cy:run
apt-get install -y xvfb
npm run cy:run
apt-get install -y libglib2.0-0
npm run cy:run
apt-get install -y libnss3
npm run cy:run
apt-get install -y libdbus-1-3
npm run cy:run
apt-get install -y libatk1.0-0
npm run cy:run
apt-get install -y libatk-bridge2.0-0
npm run cy:run
apt-get install -y libcups2
npm run cy:run
apt-get install -y libgtk-3-0
npm run cy:run
apt-get install -y libgbm1
npm run cy:run
apt-get install -y libasound2
npm run cy:run
open "package.json"
npm run cy:start
npm run cy:mock-api
npm run cy:server
open "package.json"
npm list webpack webpack-cli
npm run cy:server -- --verbose
open "webpack/dev-e2e.js"
lsof -i :3230
apt-get install -y lsof
lsof -i :3230
ls -la test/e2e-cypress/static
npm run cy:run
open "package.json"

