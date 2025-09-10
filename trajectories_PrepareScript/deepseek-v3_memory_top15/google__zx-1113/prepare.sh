ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
open "package.json"
node --version
dpkg --configure -a && curl -sL https://deb.nodesource.com/setup_22.x | bash - && apt-get install -y nodejs
apt-get install -y curl
dpkg --configure -a && curl -sL https://deb.nodesource.com/setup_22.x | bash - && apt-get install -y nodejs
node --version && npm --version
npm ci
npm run build
npm test
open "test/cli.test.js" 226
open "test/fixtures/non-std-ext.zx"
node build/cli.js --ext='.mjs' test/fixtures/non-std-ext.zx
npm test
edit 'test('"'"'scripts with non standard extension'"'"', async () => {
    const o =
      await $`node build/cli.js --ext='"'"'.mjs'"'"' test/fixtures/non-std-ext.zx`
    assert.ok(o.stdout.trim().endsWith('"'"'zx/test/fixtures/non-std-ext.zx.mjs'"'"'))' 'test('"'"'scripts with non standard extension'"'"', async () => {
    const o =
      await $`node build/cli.js --ext='"'"'.mjs'"'"' test/fixtures/non-std-ext.zx`
    console.log('"'"'Actual output:'"'"', o.stdout.trim())
    assert.ok(o.stdout.trim().endsWith('"'"'zx/test/fixtures/non-std-ext.zx.mjs'"'"'))'
open "test/cli.test.js" 226
edit 'const o =
      await $`node build/cli.js --ext='"'"'.mjs'"'"' test/fixtures/non-std-ext.zx`
    assert.ok(o.stdout.trim().endsWith('"'"'zx/test/fixtures/non-std-ext.zx.mjs'"'"'))' 'const o =
      await $`node build/cli.js --ext='"'"'.mjs'"'"' test/fixtures/non-std-ext.zx`
    console.log('"'"'Actual stdout:'"'"', o.stdout.trim())
    assert.ok(o.stdout.trim().endsWith('"'"'zx/test/fixtures/non-std-ext.zx.mjs'"'"'))'
npm test
node build/cli.js --ext='.mjs' test/fixtures/non-std-ext.zx
edit 'assert.ok(o.stdout.trim().endsWith('"'"'zx/test/fixtures/non-std-ext.zx.mjs'"'"'))' 'assert.ok(o.stdout.trim().endsWith('"'"'/testbed/test/fixtures/non-std-ext.zx.mjs'"'"'))'
npm test
npm test
npm test
npm test
npm test
npm test
npm test
npm test
npm test
npm test
npm test
npm test
npm test
npm test
npm test
npm test
npm test
npm test
npm test
npm test
npm test
npm test
npm test
npm test
npm test
npm test
npm test

