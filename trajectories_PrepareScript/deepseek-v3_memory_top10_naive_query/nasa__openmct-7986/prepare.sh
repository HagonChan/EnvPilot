ls -la
ls -la .github/workflows
open ".github/workflows/e2e-pr.yml"
open "package.json"
open ".nvmrc"
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
apt-get install -y curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm install lts/hydrogen
node --version && npm --version
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm use lts/hydrogen
node --version && npm --version
source ~/.nvm/nvm.sh && nvm use lts/hydrogen && node --version && npm --version
source ~/.nvm/nvm.sh && nvm use lts/hydrogen && node --version && npm --version
ls -la ~/.nvm
source ~/.nvm/nvm.sh && nvm use lts/hydrogen && node --version && npm --version
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode72 && curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
dpkg --remove --force-depends libnode72 && curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
node --version && npm --version
npm ci
npm run test:e2e:full
npx playwright install
apt-get install -y libglib2.0-0 libnss3 libnspr4 libdbus-1-3 libatk1.0-0 libatk-bridge2.0-0 libcups2 libdrm2 libxkbcommon0 libxcomposite1 libxdamage1 libxfixes3 libxrandr2 libgbm1 libpango-1.0-0 libcairo2 libasound2 libatspi2.0-0
npm run test:e2e:full
