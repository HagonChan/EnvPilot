
ls -la
find_file '*.yml' .github/workflows
open "package.json"
node --version || echo "Node.js not installed" ; npm --version || echo "npm not installed"
apt-get update && apt-get install -y nodejs npm
node --version && npm --version
npm install commander
node test/run.js && npm run test-typings
