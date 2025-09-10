ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
open "package.json"
node --version
curl -sL https://deb.nodesource.com/setup_22.x | bash - && apt-get install -y nodejs
apt-get remove -y nodejs && curl -sL https://deb.nodesource.com/setup_22.x | bash - && apt-get install -y nodejs
apt-get update && apt-get install -y curl
curl -sL https://deb.nodesource.com/setup_22.x | bash - && apt-get install -y nodejs
apt-get remove -y nodejs && curl -sL https://deb.nodesource.com/setup_22.x | bash - && apt-get install -y nodejs
apt-get clean && apt-get update && apt-get remove -y nodejs && curl -sL https://deb.nodesource.com/setup_22.x | bash - && apt-get install -y nodejs
node --version
npm ci
npm run build
npm run test
open "test/cli.test.js" 226
open "test/util.test.js" 85
echo -e "\033[92mHello\033[39m"
