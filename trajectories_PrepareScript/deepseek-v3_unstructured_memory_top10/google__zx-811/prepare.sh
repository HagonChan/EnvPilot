ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
open "package.json"
node --version
apt-get update && apt-get install -y nodejs npm
node --version
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode-dev && apt-get install -y nodejs
node --version && npm --version
npm ci
npm audit fix
npm audit fix --force
npm run build
npm run test
apt-get install -y netcat-openbsd
npm run test
open "test/util.test.js"
open "build/util.js"
open "build/util.cjs"
search_file formatCmd build/util.cjs
goto 251
ls -la node_modules/chalk
node -e "console.log('\x1B[92mHello\x1B[0m')"
search_file import_vendor.chalk build/util.cjs
search_file import_vendor build/util.cjs
open "build/vendor.cjs"
search_file chalk build/vendor.cjs
goto 20923
edit 'if (cmd == void 0) return import_vendor.chalk.grey("undefined");' 'if (cmd == void 0) return import_vendor.chalk.grey("undefined");
  console.log('"'"'formatCmd output:'"'"', import_vendor.chalk.greenBright('"'"'test'"'"'));'
search_file 'function formatCmd' build/util.cjs
goto 251
search_file 'function formatCmd' build/util.cjs
goto 251
open "build/util.cjs" 251
ls -la node_modules/chalk
node -e "console.log('\x1B[92mHello\x1B[0m')"
search_file import_vendor.chalk build/util.cjs
search_file import_vendor build/util.cjs
open "build/vendor.cjs"
search_file chalk build/vendor.cjs
goto 20923
open "build/util.cjs" 251
node -e "const { formatCmd } = require('./build/util.cjs'); console.log(formatCmd('echo hello'));"
search_file 'function style' build/util.cjs
goto 274
edit 'function style(state2, s) {
    if (s == "") return "";
    if (reservedWords.includes(s)) {
      return import_vendor.chalk.cyanBright(s);
    }
    if (state2 == word && wordCount == 0) {
      wordCount++;
      return import_vendor.chalk.greenBright(s);
    }
    if (state2 == syntax) {
      wordCount = 0;
      return import_vendor.chalk.cyanBright(s);
    }
    if (state2 == dollar) return import_vendor.chalk.yellowBright(s);
    if (state2 == null ? void 0 : state2.name.startsWith("str")) return import_vendor.chalk.yellowBright(s);
    return s;
  }' 'function style(state2, s) {
    console.log('"'"'state2:'"'"', state2 && state2.name);
    if (s == "") return "";
    if (reservedWords.includes(s)) {
      return import_vendor.chalk.cyanBright(s);
    }
    if (state2 == word && wordCount == 0) {
      wordCount++;
      return import_vendor.chalk.greenBright(s);
    }
    if (state2 == syntax) {
      wordCount = 0;
      return import_vendor.chalk.cyanBright(s);
    }
    if (state2 == dollar) return import_vendor.chalk.yellowBright(s);
    if (state2 == null ? void 0 : state2.name.startsWith("str")) return import_vendor.chalk.yellowBright(s);
    return s;
  }'

