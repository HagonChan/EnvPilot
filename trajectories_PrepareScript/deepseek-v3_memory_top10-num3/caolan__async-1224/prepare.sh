ls -la
open ".travis.yml"
open "package.json"
open "README.md"
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
node --version && npm --version
apt-get install -y npm
node --version && npm --version
npm install
open "package.json"
npm test
