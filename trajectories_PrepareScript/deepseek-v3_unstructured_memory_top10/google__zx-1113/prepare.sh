ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
open "package.json"
apt-get update && apt-get install -y nodejs npm
node --version && npm --version
curl -fsSL https://deb.nodesource.com/setup_22.x | bash - && apt-get install -y nodejs
apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_22.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode-dev && apt-get install -y nodejs
node --version && npm --version
npm ci
npm test
open "test/cli.test.js" 226
node build/cli.js --ext='.mjs' test/fixtures/non-std-ext.zx
open "test/util.test.js" 85
echo -e "\033[92mHello\033[39m"
