ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
curl -sL https://deb.nodesource.com/setup_22.x | bash - && apt-get install -y nodejs
apt-get install -y curl
curl -sL https://deb.nodesource.com/setup_22.x | bash - && apt-get install -y nodejs
node --version && npm --version
apt-get install -y mongodb-client-encryption mongodb
curl -fsSL https://www.mongodb.org/static/pgp/server-7.0.asc | gpg --dearmor -o /usr/share/keyrings/mongodb-archive-keyring.gpg
echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-archive-keyring.gpg ] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/7.0 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-7.0.list
apt-get update
apt-get install -y mongodb-org mongodb-org-tools mongodb-mongosh mongodb-database-tools mongodb-client-encryption
apt-get install -y mongodb-org
mongod --version
npm install
npm test
grep -r "gh-8629" .
curl -s https://api.github.com/repos/Automattic/mongoose/issues/8629 | jq .
apt-get install -y jq
curl -s https://api.github.com/repos/Automattic/mongoose/issues/8629 | jq .
