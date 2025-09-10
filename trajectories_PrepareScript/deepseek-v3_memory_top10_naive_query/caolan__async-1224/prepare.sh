ls -la
open ".travis.yml"
open "package.json"
curl -fsSL https://deb.nodesource.com/setup_6.x | bash - && apt-get install -y nodejs
node --version && npm --version
apt-get install -y npm
apt-get update && apt-get install -y npm
node --version && npm --version
npm install
npm test
