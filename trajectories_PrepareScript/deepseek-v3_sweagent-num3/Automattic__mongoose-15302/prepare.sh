ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
node --version
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
apt-get update && apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
node --version
apt-get install -y mongodb
curl -fsSL https://www.mongodb.org/static/pgp/server-6.0.asc | gpg --dearmor -o /usr/share/keyrings/mongodb-archive-keyring.gpg
echo "deb [arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-archive-keyring.gpg] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/6.0 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-6.0.list
apt-get update && apt-get install -y mongodb-org=6.0.15 mongodb-org-database=6.0.15 mongodb-org-server=6.0.15 mongodb-org-mongos=6.0.15 mongodb-org-shell=6.0.15 mongodb-org-tools=6.0.15
mongod --version
mongod --fork --logpath /var/log/mongodb/mongod.log
mongod
mkdir -p /data/db && chown -R mongodb:mongodb /data/db
mongod --fork --logpath /var/log/mongodb/mongod.log
ps aux | grep mongod
npm install
npm test
