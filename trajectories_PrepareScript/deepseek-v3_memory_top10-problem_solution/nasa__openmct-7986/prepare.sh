ls -la
ls -la .github/workflows
open ".github/workflows/e2e-couchdb.yml"
open "package.json"
open ".nvmrc"
curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - && apt-get install -y nodejs
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt-get update && apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode72 && apt-get install -y nodejs
dpkg --remove --force-remove-reinstreq libnode72 && apt-get install -y nodejs
apt-get remove -y nodejs libnode72 && apt-get install -y nodejs
node --version
npm ci --no-audit --progress=false
npx playwright@1.48.1 install
apt-get install -y libglib2.0-0 libnss3 libnspr4 libdbus-1-3 libatk1.0-0 libatk-bridge2.0-0 libcups2 libdrm2 libxkbcommon0 libxcomposite1 libxdamage1 libxfixes3 libxrandr2 libgbm1 libpango-1.0-0 libcairo2 libasound2 libatspi2.0-0
npx playwright install-deps
npx playwright test --browser=chromium --headed
npm run test
apt-get install -y chromium-browser
export CHROME_BIN=/usr/bin/chromium-browser && npm run test
snap install chromium
apt-get install -y snapd
systemctl start snapd && snap install chromium
export CHROME_BIN=/usr/bin/chromium-browser && npm run test
