ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/nodejs.yml"
node --version && npm --version
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
node --version && npm --version
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
apt-get remove -y nodejs && curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
apt-get update && apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
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
npm run cy:ci

