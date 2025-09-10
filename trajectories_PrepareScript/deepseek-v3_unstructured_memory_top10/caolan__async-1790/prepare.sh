ls -la
open "package.json"
ls -la .github
ls -la .github/workflows
open ".github/workflows/ci.yml"
apt-get update && apt-get install -y nodejs npm
node --version && npm --version
npm ci
npm audit fix
npm test
