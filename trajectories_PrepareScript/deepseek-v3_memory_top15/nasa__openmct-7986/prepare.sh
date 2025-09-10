ls -la
ls -la .github/workflows
open ".github/workflows/e2e-pr.yml"
open "package.json"
open ".nvmrc"
nvm install lts/hydrogen && nvm use lts/hydrogen
apt-get update && apt-get install -y nodejs npm
node --version && npm --version
curl -sL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt-get install -y curl
curl -sL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode-dev && apt-get install -y nodejs
apt-get remove -y libnode72 && apt-get install -y nodejs
dpkg --remove --force-remove-reinstreq libnode72 && apt-get install -y nodejs
apt-get remove -y nodejs && apt-get install -y nodejs
dpkg -i --force-overwrite /var/cache/apt/archives/nodejs_18.20.6-1nodesource1_amd64.deb
curl -sL https://deb.nodesource.com/node_18.x/pool/main/n/nodejs/nodejs_18.20.6-1nodesource1_amd64.deb -o /tmp/nodejs.deb && dpkg -i --force-overwrite /tmp/nodejs.deb
node --version && npm --version
npm ci --no-audit --progress=false
npx playwright install
apt-get install -y libnss3 libnspr4 libgbm1 libasound2
npx playwright install-deps
npm run test:e2e:full
npm run cov:e2e:report
