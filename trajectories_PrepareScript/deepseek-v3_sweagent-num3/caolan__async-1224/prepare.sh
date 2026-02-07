ls -la
ls -la .github/workflows
open ".travis.yml"
open "package.json"
npm install
apt-get update && apt-get install -y nodejs npm
npm install
npm test
