ls -la
open "package.json"
ls -la .github/workflows
open ".github/workflows/test.yml"
curl -fsSL https://deb.nodesource.com/setup_22.x | bash - && apt-get install -y nodejs
curl -fsSL https://deb.nodesource.com/setup_22.x | bash - && apt-get install -y nodejs
apt-get install -y curl
apt-get update
apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_22.x | bash - && apt-get install -y nodejs
node --version && npm --version
npm ci
npm run build
npm run test
open "test/cli.test.js" 226
node build/cli.js --ext='.mjs' test/fixtures/non-std-ext.zx
edit 'assert.ok(o.stdout.trim().endsWith('"'"'zx/test/fixtures/non-std-ext.zx.mjs'"'"'))' 'assert.ok(o.stdout.trim().includes('"'"'non-std-ext.zx.mjs'"'"'))' False
npm run test
open "test/util.test.js" 85
search_dir 'function formatCmd' src
open "src/util.ts"
search_file 'function formatCmd' src/util.ts
goto 238
node -e "console.log(require('chalk').level)"
FORCE_COLOR=1 npm run test
