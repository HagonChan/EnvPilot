ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
open "package.json"
nvm install 18 && nvm use 18
apt-get update && apt-get install -y nodejs npm
node --version && npm --version
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
wget https://nodejs.org/dist/v18.17.1/node-v18.17.1-linux-x64.tar.xz && tar -xf node-v18.17.1-linux-x64.tar.xz && cp -R node-v18.17.1-linux-x64/* /usr/local/
apt-get install -y wget
wget https://nodejs.org/dist/v18.17.1/node-v18.17.1-linux-x64.tar.xz && tar -xf node-v18.17.1-linux-x64.tar.xz && cp -R node-v18.17.1-linux-x64/* /usr/local/
tar -xf node-v18.17.1-linux-x64.tar.xz && cp -R node-v18.17.1-linux-x64/* /usr/local/
node --version && npm --version
curl -L https://www.npmjs.com/install.sh | sh
node --version && npm --version
apt-get remove -y nodejs npm && ln -sf /usr/local/bin/node /usr/bin/node && ln -sf /usr/local/bin/npm /usr/bin/npm
node --version && npm --version
npm install -g npm@latest
curl -L https://www.npmjs.com/install.sh | sh
node --version && npm --version
curl -L https://registry.npmjs.org/npm/-/npm-9.8.1.tgz | tar xz -C /tmp && cd /tmp/package && node bin/npm-cli.js install -g npm@9.8.1
node --version && npm --version
cd /testbed && npm install
apt-get install -y mongodb
wget -qO - https://www.mongodb.org/static/pgp/server-6.0.asc | apt-key add - && echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/6.0 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-6.0.list && apt-get update && apt-get install -y mongodb-org
apt-get install -y mongodb-org=5.0.9 mongodb-org-database=5.0.9 mongodb-org-server=5.0.9 mongodb-org-shell=5.0.9 mongodb-org-mongos=5.0.9 mongodb-org-tools=5.0.9
apt-get install -y mongodb-org=4.4.24 mongodb-org-server=4.4.24 mongodb-org-shell=4.4.24 mongodb-org-mongos=4.4.24 mongodb-org-tools=4.4.24
apt-get install -y mongodb
npm test
