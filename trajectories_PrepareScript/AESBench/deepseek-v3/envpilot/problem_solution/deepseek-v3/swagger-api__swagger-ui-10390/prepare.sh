ls -la
open "package.json"
open ".nvmrc"
curl -fsSL https://deb.nodesource.com/setup_22.x | bash -
wget -qO- https://deb.nodesource.com/setup_22.x | bash -
apt-get update
apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_22.x | bash -
apt-get install -y nodejs
node --version && npm --version
npm install
npm test
npm test
lsof -i :3204
netstat -tuln | grep 3204
apt-get install -y net-tools
netstat -tuln | grep 3204
npm run cy:ci
open "webpack/dev-e2e.js"
open "package.json"
edit '"cy:ci": "start-server-and-test cy:start http://localhost:3204 cy:run"' '"cy:ci": "start-server-and-test cy:start http://localhost:3230 cy:run"' True
npm test
apt-get install -y xvfb
npm test
apt-get install -y libglib2.0-0
npm test
apt-get install -y libnss3
npm test
apt-get install -y libdbus-1-3
npm test
apt-get install -y libatk1.0-0
npm test
apt-get install -y libatk-bridge2.0-0
npm test
apt-get install -y libcups2
npm test
apt-get install -y libgtk-3-0
npm test
apt-get install -y libgbm1
npm test
apt-get install -y libasound2
npm test
