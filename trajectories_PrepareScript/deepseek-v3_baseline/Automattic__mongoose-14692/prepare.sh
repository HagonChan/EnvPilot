ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
open "package.json"
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt-get update && apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode72 && curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
dpkg --force-all -r libnode72 && curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
node --version && npm --version
apt-get install -y mongodb-org=6.0.14 mongodb-org-database=6.0.14 mongodb-org-server=6.0.14 mongodb-org-mongos=6.0.14 mongodb-org-tools=6.0.14
wget -qO - https://www.mongodb.org/static/pgp/server-6.0.asc | apt-key add - && echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/6.0 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-6.0.list && apt-get update && apt-get install -y mongodb-org=6.0.14 mongodb-org-database=6.0.14 mongodb-org-server=6.0.14 mongodb-org-mongos=6.0.14 mongodb-org-tools=6.0.14
apt-get update && apt-get install -y wget gnupg
wget -qO - https://www.mongodb.org/static/pgp/server-6.0.asc | gpg --dearmor -o /usr/share/keyrings/mongodb-archive-keyring.gpg && echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-archive-keyring.gpg ] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/6.0 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-6.0.list && apt-get update && apt-get install -y mongodb-org=6.0.14 mongodb-org-database=6.0.14 mongodb-org-server=6.0.14 mongodb-org-mongos=6.0.14 mongodb-org-tools=6.0.14
mongod --version && mongod --fork --dbpath /data/db --logpath /var/log/mongodb/mongod.log
mongod --dbpath /data/db --logpath /var/log/mongodb/mongod.log
npm install
npm test
pkill mongod
