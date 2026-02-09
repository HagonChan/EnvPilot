ls -la
open "package.json"
node --version && npm --version
apt update && apt install -y nodejs npm
node --version && npm --version
npm install
npm test
