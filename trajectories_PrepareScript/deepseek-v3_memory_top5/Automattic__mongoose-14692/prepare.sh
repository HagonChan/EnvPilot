ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
open "package.json"
search_file engines package.json
goto 113
nvm install 20 && nvm use 20
curl -sL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
apt-get remove -y nodejs
apt-get update && apt-get install -y curl
curl -sL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
node --version
apt-get install -y mongodb
apt-get install -y gnupg && wget -qO - https://www.mongodb.org/static/pgp/server-6.0.asc | apt-key add - && echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/6.0 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-6.0.list
apt-get install -y wget
wget -qO - https://www.mongodb.org/static/pgp/server-6.0.asc | apt-key add - && echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/6.0 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-6.0.list
apt-get update && apt-get install -y mongodb-org
systemctl start mongod
mongod --fork --logpath /var/log/mongodb/mongod.log
cat /var/log/mongodb/mongod.log
mkdir -p /data/db && chown -R mongodb:mongodb /data/db
mongod --fork --logpath /var/log/mongodb/mongod.log
ps aux | grep mongod
npm install
npm test
npm audit fix
npm install
npm audit fix
