ls -la
ls -la .github/workflows
open ".github/workflows/e2e-pr.yml"
open "package.json"
open ".nvmrc"
nvm install lts/hydrogen && nvm use lts/hydrogen
curl -sL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
node --version
curl -sL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt-get update && apt-get install -y curl
curl -sL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode72 && apt-get install -y nodejs
dpkg --remove --force-remove-reinstreq libnode72 && apt-get install -y nodejs
apt-get remove -y nodejs && apt-get install -y nodejs
dpkg --remove --force-remove-reinstreq libnode72 && apt-get install -y nodejs
node --version && npm --version
npm ci --no-audit --progress=false
npm run test:e2e:full
npx playwright install
npx playwright install-deps
npm run test:e2e:full
npm run cov:e2e:report
