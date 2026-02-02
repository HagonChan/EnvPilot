ls -la
open ".travis.yml"
open "package.json"
node --version && npm --version
apt-get update && apt-get install -y nodejs npm
node --version && npm --version
npm install
npm test
