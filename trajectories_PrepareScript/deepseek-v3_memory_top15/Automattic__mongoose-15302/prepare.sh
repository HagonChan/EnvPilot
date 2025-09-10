ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
curl -sL https://deb.nodesource.com/setup_22.x | bash - && apt-get install -y nodejs
apt-get install -y curl
curl -sL https://deb.nodesource.com/setup_22.x | bash - && apt-get install -y nodejs
node --version && npm --version
apt-get install -y mongodb-client-encryption mongodb
apt-get install -y gnupg && wget -qO - https://www.mongodb.org/static/pgp/server-6.0.asc | apt-key add - && echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/6.0 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-6.0.list && apt-get update && apt-get install -y mongodb-org
apt-get install -y wget
wget -qO - https://www.mongodb.org/static/pgp/server-6.0.asc | apt-key add - && echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/6.0 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-6.0.list && apt-get update && apt-get install -y mongodb-org
mongod --version
npm install
npm test
curl -s https://api.github.com/repos/Automattic/mongoose/issues/8629 | jq .
apt-get install -y jq
curl -s https://api.github.com/repos/Automattic/mongoose/issues/8629 | jq .
