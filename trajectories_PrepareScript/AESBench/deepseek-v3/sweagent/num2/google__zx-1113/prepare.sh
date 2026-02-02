ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
open "package.json"
curl -fsSL https://deb.nodesource.com/setup_22.x | bash - && apt-get install -y nodejs
apt-get update && apt-get install -y nodejs
apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_22.x | bash -
apt-get install -y nodejs
node --version
npm ci
npm run build
npm test
open "test/cli.test.js"
goto 226
ls -la test/fixtures/non-std-ext.zx
cat test/fixtures/non-std-ext.zx
node build/cli.js --ext='.mjs' test/fixtures/non-std-ext.zx
edit 'assert.ok(o.stdout.trim().endsWith('"'"'zx/test/fixtures/non-std-ext.zx.mjs'"'"'))' 'assert.ok(o.stdout.trim().includes('"'"'non-std-ext.zx.mjs'"'"'))' False
npm test
open "test/util.test.js"
open "build/util.js"
open "build/util.cjs"
search_file formatCmd build/util.cjs
goto 130
echo $NO_COLOR
echo $FORCE_COLOR
FORCE_COLOR=1 npm test
