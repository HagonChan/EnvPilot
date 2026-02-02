ls -la
open "package.json"
ls -la .github/workflows
open ".github/workflows/js.yml"
node --version && npm --version
curl -fsSL https://deb.nodesource.com/setup_22.x | bash - && apt-get install -y nodejs
node --version && npm --version
curl -fsSL https://deb.nodesource.com/setup_22.x | bash - && apt-get install -y nodejs
apt-get update && apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_22.x | bash - && apt-get install -y nodejs
node --version && npm --version
npm ci
npm ci --fetch-retry-mintimeout=20000 --fetch-retry-maxtimeout=120000
npm run js
npm run js-test
apt-get update && apt-get install -y chromium
apt-get install -y chromium-browser
npm run js-test
snap install chromium
apt-get update && apt-get install -y snapd
systemctl start snapd
/usr/lib/snapd/snapd
apt-get install -y chromium-browser
npm run js-test
