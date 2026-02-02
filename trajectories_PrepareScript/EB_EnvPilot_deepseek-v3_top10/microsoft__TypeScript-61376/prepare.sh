ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "package.json"
node --version || echo "Node.js not installed"
curl -sL https://deb.nodesource.com/setup_14.x | bash - && apt-get install -y nodejs
node --version && npm --version
apt-get remove -y nodejs && curl -sL https://deb.nodesource.com/setup_14.x | bash - && apt-get install -y nodejs
apt-get update && apt-get install -y curl
curl -sL https://deb.nodesource.com/setup_14.x | bash - && apt-get install -y nodejs
curl -sL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode72 && curl -sL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
apt-get install -y --force-overwrite nodejs
dpkg -i --force-overwrite /var/cache/apt/archives/nodejs_16.20.2-1nodesource1_amd64.deb
apt-get download nodejs && dpkg -i --force-overwrite nodejs_16.20.2-1nodesource1_amd64.deb
node --version && npm --version
npm ci
npm ci --fetch-retry-mintimeout=20000 --fetch-retry-maxtimeout=60000
npm install
npx playwright install
curl -sL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm install 18
node --version && npm --version
npm install

