ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
open "package.json"
open "README.md"
pnpm install
npm install -g pnpm
apt-get update && apt-get install -y nodejs npm
npm install -g pnpm
apt-cache policy nodejs
curl -fsSL https://deb.nodesource.com/setup_18.x | bash -
apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_18.x | bash -
apt-get install -y nodejs
apt-get remove -y libnode-dev
apt-get install -y nodejs
apt-get remove -y libnode72
dpkg --force-all -r libnode72
apt-get install -y nodejs
node --version && npm --version
npm install -g pnpm
pnpm --version
pnpm install
pnpm test
mongod --version
apt-get install -y mongodb
curl -fsSL https://www.mongodb.org/static/pgp/server-7.0.asc | apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu $(lsb_release -sc)/mongodb-org/7.0 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-7.0.list
apt-get update && apt-get install -y lsb-release
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/7.0 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-7.0.list
apt-get update && apt-get install -y mongodb-org
mongod --fork --logpath /var/log/mongodb/mongod.log
mongod
mkdir -p /data/db && chown -R mongodb:mongodb /data/db
mongod --fork --logpath /var/log/mongodb/mongod.log
mongo --eval "db.runCommand({ping: 1})"
pnpm test
pip install localstack
apt-get install -y python3-pip
pip3 install localstack
pip3 install tomli
pip3 install localstack
pip3 install moto
pnpm test
open "packages/plugin-cloud-storage/src/plugin.ts"
open "packages/plugin-cloud-storage/test/int.spec.ts"
find packages/plugin-cloud-storage -name "*.spec.ts"
find . -name "*.spec.ts"
open "./test/storage-s3/int.spec.ts"

