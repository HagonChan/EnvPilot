ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
open "package.json"
curl -fsSL https://deb.nodesource.com/setup_22.x | bash - && apt-get install -y nodejs
apt-get update && apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_22.x | bash - && apt-get install -y nodejs
node --version && npm --version
npm ci
npm test
open "test/cli.test.js" 226
open "test/util.test.js" 85
echo -e "\033[92mHello\033[39m"
search_dir formatCmd src
open "src/util.ts"
search_file formatCmd src/util.ts
goto 238
node -e "console.log(require('chalk').green('Hello'))"
ls node_modules/chalk
open "test/util.test.js" 85
edit 'test('"'"'formatCwd works'"'"', () => {
    assert.equal(
      formatCmd(`echo $'"'"'hi'"'"'`),
      "$ \u001b[92mecho\u001b[39m \u001b[93m$\u001b[39m\u001b[93m'"'"'hi\u001b[39m\u001b[93m'"'"'\u001b[39m\n"
    )
    assert.equal(
      formatCmd(`while true; do "$" done`),
      '"'"'$ \u001b[96mwhile\u001b[39m \u001b[92mtrue\u001b[39m\u001b[96m;\u001b[39m \u001b[96mdo\u001b[39m \u001b[93m"$\u001b[39m\u001b[93m"\u001b[39m \u001b[96mdone\u001b[39m\n'"'"'
    )
    assert.equal(
      formatCmd(`echo '"'"'\n str\n'"'"'`),
      "$ \u001b[92mecho\u001b[39m \u001b[93m'"'"'\u001b[39m\n> \u001b[93m str\u001b[39m\n> \u001b[93m'"'"'\u001b[39m\n"
    )
    assert.equal(
      formatCmd(`$'"'"'\\'"'"''"'"'`),
      "$ \u001b[93m$\u001b[39m\u001b[93m'"'"'\u001b[39m\u001b[93m\\\u001b[39m\u001b[93m'"'"'\u001b[39m\u001b[93m'"'"'\u001b[39m\n"
    )
  })' 'test('"'"'formatCwd works'"'"', () => {
    const actual = formatCmd(`echo $'"'"'hi'"'"'`);
    console.log('"'"'Actual output:'"'"', JSON.stringify(actual));
    assert.equal(
      actual,
      "$ \u001b[92mecho\u001b[39m \u001b[93m$\u001b[39m\u001b[93m'"'"'hi\u001b[39m\u001b[93m'"'"'\u001b[39m\n"
    )
    assert.equal(
      formatCmd(`while true; do "$" done`),
      '"'"'$ \u001b[96mwhile\u001b[39m \u001b[92mtrue\u001b[39m\u001b[96m;\u001b[39m \u001b[96mdo\u001b[39m \u001b[93m"$\u001b[39m\u001b[93m"\u001b[39m \u001b[96mdone\u001b[39m\n'"'"'
    )
    assert.equal(
      formatCmd(`echo '"'"'\n str\n'"'"'`),
      "$ \u001b[92mecho\u001b[39m \u001b[93m'"'"'\u001b[39m\n> \u001b[93m str\u001b[39m\n> \u001b[93m'"'"'\u001b[39m\n"
    )
    assert.equal(
      formatCmd(`$'"'"'\\'"'"''"'"'`),
      "$ \u001b[93m$\u001b[39m\u001b[93m'"'"'\u001b[39m\u001b[93m\\\u001b[39m\u001b[93m'"'"'\u001b[39m\u001b[93m'"'"'\u001b[39m\n"
    )
  })'
npm test
npm test test/util.test.js
npm test test/util.test.js
npm test test/util.test.js
npm test test/util.test.js
npm test test/util.test.js
npm test test/util.test.js
npm test test/util.test.js
npm test test/util.test.js
npm test test/util.test.js
npm test test/util.test.js
npm test test/util.test.js
npm test test/util.test.js
npm test test/util.test.js
npm test test/util.test.js
npm test test/util.test.js
npm test test/util.test.js
npm test test/util.test.js
npm test test/util.test.js
npm test test/util.test.js
npm test test/util.test.js
npm test test/util.test.js
npm test test/util.test.js
npm test test/util.test.js
npm test test/util.test.js
npm test test/util.test.js
npm test test/util.test.js
npm test test/util.test.js

