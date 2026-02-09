
find . -name '*.yml' -o -name '*.yaml' -o -name '*.gitlab-ci.yml' -o -name 'Jenkinsfile' -o -name 'azure-pipelines.yml' -o -name 'circleci/config.yml'
open ".github/workflows/release-notes.yml"
open ".github/workflows/lint.yml"
find . -name 'package.json'
open "package.json"
node -v
apt-get install -y nodejs
npm ci
apt-get install -y npm
apt-get update
apt-get install -y npm
npm ci
npm test
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode-dev
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode72
dpkg --remove --force-remove-reinstreq libnode72
apt-get remove -y nodejs libnode72
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
node -v
npm ci
npm test
