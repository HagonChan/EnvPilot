ls -la
ls -la .github/workflows
open ".github/workflows/nodejs.yml"
open "package.json"
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
apt-get update && apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
apt-get update && apt-get install -y --fix-missing nodejs
apt-get remove -y nodejs && curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
node --version
npm ci
npm run lint-errors
npm run test:unit
npm run build
npm run test:artifact
npm run cy:run
apt-get install -y xvfb
npm run cy:run
apt-get install -y libglib2.0-0
npm run cy:run
apt-get install -y libnss3
npm run cy:run
apt-get install -y libdbus-1-3
npm run cy:run
apt-get install -y libatk1.0-0
npm run cy:run
apt-get install -y libatk-bridge2.0-0
npm run cy:run
apt-get install -y libcups2
npm run cy:run
apt-get install -y libgtk-3-0
npm run cy:run
apt-get install -y libgbm1
npm run cy:run
apt-get install -y libasound2
npm run cy:run
npm run start
curl -I http://localhost:3002
ws -d dist/ --hostname 0.0.0.0 -p 3002
npm install -g local-web-server
ws -d dist/ --hostname 0.0.0.0 -p 3002
curl -I http://localhost:3002
ws -d dist/ --hostname 0.0.0.0 -p 3002 &
curl -I http://localhost:3002
open "cypress.config.js"
edit 'baseUrl: "http://localhost:3230/"' 'baseUrl: "http://localhost:3002/"'
npm run cy:run
