ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
open "package.json"
node --version
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
apt-get update && apt-get install -y curl
apt-get install -y ca-certificates && apt-key adv --fetch-keys https://deb.nodesource.com/gpgkey/nodesource.gpg.key && echo 'deb https://deb.nodesource.com/node_20.x jammy main' > /etc/apt/sources.list.d/nodesource.list && apt-get update && apt-get install -y nodejs
apt-get install -y gnupg
apt-key adv --fetch-keys https://deb.nodesource.com/gpgkey/nodesource.gpg.key && echo 'deb https://deb.nodesource.com/node_20.x jammy main' > /etc/apt/sources.list.d/nodesource.list && apt-get update && apt-get install -y nodejs
apt-get install -y nodejs
node --version
npm ci
npm ci --fetch-retry-mintimeout 20000 --fetch-retry-maxtimeout 120000
npm install
npm run build
npm run test
apt-get install -y netcat-openbsd
npm install cpy
npm install cpy --fetch-retry-mintimeout 20000 --fetch-retry-maxtimeout 120000
ls -la test/fixtures/
cp test/fixtures/markdown.md test/fixtures/markdown.md.mjs
npm run test
open "test/util.test.js" 83
echo $NO_COLOR
open "src/util.ts"
search_dir formatCmd src
open "src/core.ts"
search_file formatCmd src/util.ts
open "src/util.ts" 278
node -e "console.log(require('chalk').level)"
node -e "import('chalk').then(m => console.log(m.default.level)).catch(console.error)"
FORCE_COLOR=1 npm run test
