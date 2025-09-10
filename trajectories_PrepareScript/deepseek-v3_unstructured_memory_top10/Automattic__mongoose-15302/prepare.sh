ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
apt-get update && apt-get install -y nodejs npm
node --version && npm --version
curl -fsSL https://deb.nodesource.com/setup_22.x | bash - && apt-get install -y nodejs
apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_22.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode-dev && apt-get install -y nodejs
node --version && npm --version
apt-get install -y mongodb mongodb-client-encryption
curl -fsSL https://www.mongodb.org/static/pgp/server-6.0.asc | apt-key add - && echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/6.0 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-6.0.list
apt-get update && apt-get install -y mongodb-org mongodb-org-tools
systemctl start mongod
mongod --fork --logpath /var/log/mongodb/mongod.log
cat /var/log/mongodb/mongod.log
mkdir -p /data/db && chown -R mongodb:mongodb /data/db && mongod --fork --logpath /var/log/mongodb/mongod.log
ps aux | grep mongod
npm install
npm test
