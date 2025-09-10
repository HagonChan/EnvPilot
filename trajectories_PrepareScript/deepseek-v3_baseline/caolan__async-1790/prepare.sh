ls -la
open ".azure-pipelines.yml"
open ".azure-pipelines-steps.yml"
curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - && apt-get install -y nodejs
node --version && npm --version
apt-get install -y npm
apt-get update
apt-get install -y npm
node --version && npm --version
npm ci
npm test
npm audit fix
