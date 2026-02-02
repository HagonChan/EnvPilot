ls -la
ls -la .github/workflows
open ".travis.yml"
open "package.json"
open "README.md"
node --version || echo "Node.js not installed" ; npm --version || echo "npm not installed"
apt-get update && apt-get install -y nodejs npm
node --version && npm --version
npm install
npm install
npm test
