ls -la
ls -la .github/workflows
ls -la .circleci
open ".circleci/config.yml"
open "package.json"
node --version
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
apt-get remove -y nodejs
apt-get update && apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
node --version
npm install -g yarn
yarn --version
yarn set version 4.0.2
corepack enable
yarn set version 4.0.2
corepack prepare yarn@4.0.2 --activate
yarn --version
yarn install --immutable
yarn test
nx view-logs
yarn nx view-logs
echo "Reviewing test output for specific error messages..."
