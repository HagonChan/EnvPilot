ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt-get update && apt-get install -y nodejs npm
node --version && npm --version
apt-get install -y curl && curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode-dev && apt-get install -y nodejs
apt-get remove -y libnode72 && apt-get install -y nodejs
apt-get remove -y --purge libnode72 && apt-get install -y nodejs
dpkg -r --force-all libnode72 && apt-get install -y nodejs
node --version && npm --version
apt-get install -y mongodb-org=6.0.14 mongodb-org-database=6.0.14 mongodb-org-server=6.0.14 mongodb-org-mongos=6.0.14 mongodb-org-tools=6.0.14
apt-get install -y gnupg && wget -qO - https://www.mongodb.org/static/pgp/server-6.0.asc | apt-key add - && echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/6.0 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-6.0.list && apt-get update
apt-get install -y wget && wget -qO - https://www.mongodb.org/static/pgp/server-6.0.asc | apt-key add - && echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/6.0 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-6.0.list && apt-get update
apt-get install -y mongodb-org=6.0.14 mongodb-org-database=6.0.14 mongodb-org-server=6.0.14 mongodb-org-mongos=6.0.14 mongodb-org-tools=6.0.14
wget http://security.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.1f-1ubuntu2.19_amd64.deb && dpkg -i libssl1.1_1.1.1f-1ubuntu2.19_amd64.deb
echo "deb http://security.ubuntu.com/ubuntu focal-security main" | tee /etc/apt/sources.list.d/focal-security.list && apt-get update && apt-get install -y libssl1.1
apt-get install -y mongodb-org=6.0.14 mongodb-org-database=6.0.14 mongodb-org-server=6.0.14 mongodb-org-mongos=6.0.14 mongodb-org-tools=6.0.14
mongod --version
npm install
npm test
