ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
open "package.json"
node --version
curl -fsSL https://deb.nodesource.com/setup_22.x | bash - && apt-get install -y nodejs
node --version
apt-get install -y curl
apt-get update
apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_22.x | bash - && apt-get install -y nodejs
node --version
npm --version
apt-get install -y mongodb
curl -fsSL https://www.mongodb.org/static/pgp/server-6.0.asc | gpg --dearmor -o /usr/share/keyrings/mongodb-archive-keyring.gpg
echo "deb [arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-archive-keyring.gpg] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/6.0 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-6.0.list
apt-get update
apt-get install -y mongodb-org
systemctl start mongod
mongod --fork --logpath /var/log/mongodb/mongod.log
cat /var/log/mongodb/mongod.log
mkdir -p /data/db && chown -R mongodb:mongodb /data/db
mongod --fork --logpath /var/log/mongodb/mongod.log
mongo --eval "db.runCommand({ping: 1})"
npm install
npm test
