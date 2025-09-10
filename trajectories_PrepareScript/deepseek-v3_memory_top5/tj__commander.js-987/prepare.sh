ls -la
ls -la .github/workflows
open ".travis.yml"
open "package.json"
apt-get update && apt-get install -y nodejs npm
node --version && npm --version
npm install
npm test
