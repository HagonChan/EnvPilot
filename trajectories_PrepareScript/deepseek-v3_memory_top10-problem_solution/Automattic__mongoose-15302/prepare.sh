ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
open "package.json"
node --version && npm --version
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
node --version && npm --version
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
apt-get update && apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode72
dpkg -i --force-overwrite /var/cache/apt/archives/nodejs_16.20.2-1nodesource1_amd64.deb
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y --download-only nodejs && dpkg -i --force-overwrite /var/cache/apt/archives/nodejs_*.deb
node --version && npm --version
npm install
npm test
