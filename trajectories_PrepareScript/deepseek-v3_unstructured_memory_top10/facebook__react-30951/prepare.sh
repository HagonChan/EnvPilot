ls -la
ls -la .github/workflows
open ".github/workflows/runtime_build_and_test.yml"
open ".nvmrc"
node --version
apt-get update && apt-get install -y nodejs
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
apt-get install -y curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
nvm install $(cat .nvmrc) && nvm use $(cat .nvmrc)
node --version && yarn --version
npm install -g yarn
yarn --version
yarn install --frozen-lockfile
open "package.json"
goto 120
apt-get install -y libssl-dev
yarn playwright install-deps
apt-get update && apt-get install -y libnss3 libatk1.0-0 libatk-bridge2.0-0 libcups2 libdbus-1-3 libexpat1 libgconf-2-4 libgdk-pixbuf2.0-0 libglib2.0-0 libgtk-3-0 libpango-1.0-0 libpangocairo-1.0-0 libx11-6 libx11-xcb1 libxcb1 libxcomposite1 libxcursor1 libxdamage1 libxext6 libxfixes3 libxi6 libxrandr2 libxrender1 libxss1 libxtst6
yarn test
open "packages/react-dom/src/events/plugins/__tests__/BeforeInputEventPlugin-test.js"
yarn test packages/react-dom/src/events/plugins/__tests__/BeforeInputEventPlugin-test.js --verbose
yarn test
