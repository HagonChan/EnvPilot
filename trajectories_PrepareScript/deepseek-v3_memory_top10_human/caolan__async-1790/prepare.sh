ls -la
open ".azure-pipelines.yml"
open ".azure-pipelines-steps.yml"
node --version && npm --version
curl -fsSL https://deb.nodesource.com/setup_14.x | bash - && apt-get install -y nodejs
node --version && npm --version
apt-get install -y npm
apt-get update && apt-get install -y npm
curl -fsSL https://deb.nodesource.com/setup_14.x | bash - && apt-get install -y nodejs
apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_14.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode72 && curl -fsSL https://deb.nodesource.com/setup_14.x | bash - && apt-get install -y nodejs
dpkg -i --force-overwrite /var/cache/apt/archives/nodejs_14.21.3-deb-1nodesource1_amd64.deb
apt-get remove -y libnode72 && apt-get autoremove -y && curl -fsSL https://deb.nodesource.com/setup_14.x | bash - && apt-get install -y nodejs
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode72 nodejs && apt-get autoremove -y && curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
node --version && npm --version
npm ci
npm install
npm test
