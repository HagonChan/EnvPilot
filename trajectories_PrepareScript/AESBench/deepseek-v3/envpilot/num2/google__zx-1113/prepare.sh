ls
open "package.json"
node --version && npm --version
dpkg --configure -a && curl -sL https://deb.nodesource.com/setup_14.x | bash - && apt-get install -y nodejs
node --version && npm --version
apt-get install -y npm
apt-get update && apt-get install -y npm --fix-missing
node --version && npm --version
npm ci
npm run test:unit

