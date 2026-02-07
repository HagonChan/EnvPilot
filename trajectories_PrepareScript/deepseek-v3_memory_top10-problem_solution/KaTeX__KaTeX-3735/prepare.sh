ls -la
open "package.json"
find_file '.github/workflows/*.yml'
find_file '.github/*.yml'
open "README.md"
open ".yarnrc.yml"
node --version
curl -fsSL https://deb.nodesource.com/setup_16.x | bash -
wget -qO- https://deb.nodesource.com/setup_16.x | bash -
apt-get update && apt-get install -y wget
wget -qO- https://deb.nodesource.com/setup_16.x | bash -
apt install nodejs -y
node --version
npm install -g yarn
yarn --version
yarn --immutable
yarn test
yarn jest
