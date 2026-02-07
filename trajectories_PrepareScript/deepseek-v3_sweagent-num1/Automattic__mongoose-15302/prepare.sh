ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
open "package.json"
npm install
apt-get update && apt-get install -y nodejs npm
npm install
node --version
apt-get remove -y nodejs npm
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode-dev && apt-get install -y nodejs
apt-get remove -y libnode72 && apt-get install -y nodejs
dpkg --force-all -r libnode72 && apt-get install -y nodejs
node --version
npm install
npm test
