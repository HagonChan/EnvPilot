ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
node --version && npm --version
apt-get install -y npm
apt-get update && apt-get install -y npm
node --version && npm --version
apt-get install -y mongodb
wget -qO - https://www.mongodb.org/static/pgp/server-6.0.asc | apt-key add -
apt-get install -y wget
wget -qO - https://www.mongodb.org/static/pgp/server-6.0.asc | apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/6.0 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-6.0.list
apt-get update && apt-get install -y mongodb-org
systemctl start mongod
mongod --fork --logpath /var/log/mongodb/mongod.log
cat /var/log/mongodb/mongod.log
mkdir -p /data/db && chown -R mongodb:mongodb /data/db
mongod --fork --logpath /var/log/mongodb/mongod.log
mongo --eval "db.runCommand({ ping: 1 })"
mongosh --eval "db.runCommand({ ping: 1 })"
npm install
apt-get remove -y nodejs && curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode-dev && curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
node --version && npm --version
npm install
npm test
