ls -la
open ".travis.yml"
node --version || echo "Node.js not installed" ; npm --version || echo "npm not installed"
apt-get update && apt-get install -y nodejs npm
apt-get update --fix-missing && apt-get install -y nodejs npm
node --version && npm --version
npm install
npm run coveralls
search_dir 'Unexpected identifier'
rm -rf node_modules package-lock.json && npm install
npm run coveralls
