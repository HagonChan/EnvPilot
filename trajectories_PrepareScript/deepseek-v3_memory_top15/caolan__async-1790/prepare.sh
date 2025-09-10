ls -la
open ".azure-pipelines.yml"
open ".azure-pipelines-steps.yml"
open "package.json"
curl -fsSL https://deb.nodesource.com/setup_14.x | bash - && apt-get install -y nodejs
node --version
npm --version
apt-get install -y npm
apt-get update
apt-get install -y npm
npm --version
npm ci
npm test
