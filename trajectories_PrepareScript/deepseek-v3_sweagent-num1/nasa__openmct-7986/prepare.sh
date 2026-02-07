ls -la
ls -la .github/workflows
open ".github/workflows/e2e-couchdb.yml"
open "package.json"
npm ci --no-audit --progress=false
apt-get update && apt-get install -y nodejs npm
npm ci --no-audit --progress=false
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode-dev && apt-get install -y nodejs
apt-get remove -y libnode-dev libnode72 && apt-get install -y nodejs
dpkg --force-all -r libnode72 && apt-get install -y nodejs
node --version
npm ci --no-audit --progress=false
npm run test:e2e:couchdb
npx playwright install
apt-get install -y libnss3 libnspr4 libgbm1 libasound2
npm run test:e2e:couchdb
