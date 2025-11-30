
find_file package.json
open "/testbed/package.json"
apt-get update && apt-get install -y nodejs npm
apt-get update && apt-get install -y nodejs npm --fix-missing
npm ci
nvm install 21.7.3 && nvm use 21.7.3
curl -sL https://deb.nodesource.com/setup_21.x | bash - && apt-get install -y nodejs
apt-get install -y nodejs=21.* npm --fix-missing
apt-get update && apt-get install -y curl
curl -sL https://deb.nodesource.com/setup_21.x | bash -
apt-get install -y nodejs
apt-get remove -y libnode-dev
apt-get install -y nodejs
npm ci
npm test
