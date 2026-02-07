ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
npm ci
apt-get update && apt-get install -y nodejs npm
npm ci
apt-get remove -y nodejs npm && curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode-dev && curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt-get purge -y nodejs libnode* && curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
node --version && npm --version
npm ci
npm test
