ls -la
ls -la .github/workflows
ls -la .circleci
open ".circleci/config.yml"
search_file test .circleci/config.yml
open "package.json"
node --version
apt-get update && apt-get install -y nodejs
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
apt-get update && apt-get install -y curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
nvm install 20.11
node --version
corepack enable
yarn install --immutable
yarn test
nx view-logs
yarn nx view-logs
cat .nx/cache/logs/*.log
yarn nx test @blueprintjs/core
apt-get install -y chromium && export CHROME_BIN=$(which chromium)
apt-get install -y chromium-browser && export CHROME_BIN=$(which chromium-browser)
echo $CHROME_BIN
yarn nx test @blueprintjs/core
yarn nx reset
yarn nx test @blueprintjs/core
snap install chromium
apt-get update && apt-get install -y snapd
systemctl start snapd && snap install chromium
apt-get install -y chromium-browser
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && apt-get install -y ./google-chrome-stable_current_amd64.deb
apt-get update && apt-get install -y wget
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && apt-get install -y ./google-chrome-stable_current_amd64.deb
export CHROME_BIN=$(which google-chrome-stable) && yarn nx test @blueprintjs/core
find . -name "karma.conf.js" | grep "@blueprintjs/core"
find . -name "package.json" | grep "@blueprintjs/core"
ls -la packages/
open "packages/core/package.json"
cat packages/core/package.json
ls -la packages/core
open "packages/core/karma.conf.js"
cat packages/core/karma.conf.js
edit '"test:karma": "karma start"' '"test:karma": "karma start --no-sandbox"' False
edit 'createKarmaConfig({' 'createKarmaConfig({
        browsers: ['"'"'ChromeHeadlessNoSandbox'"'"'],
        customLaunchers: {
            ChromeHeadlessNoSandbox: {
                base: '"'"'ChromeHeadless'"'"',
                flags: ['"'"'--no-sandbox'"'"']
            }
        },'
edit 'module.exports = async function (config) {
    const { createKarmaConfig } = await import("@blueprintjs/karma-build-scripts");
    config.set(
        createKarmaConfig({
            dirname: __dirname,
            coverageExcludes: [' 'module.exports = async function (config) {
    const { createKarmaConfig } = await import("@blueprintjs/karma-build-scripts");
    config.set(
        createKarmaConfig({
            dirname: __dirname,
            browsers: ['"'"'ChromeHeadlessNoSandbox'"'"'],
            customLaunchers: {
                ChromeHeadlessNoSandbox: {
                    base: '"'"'ChromeHeadless'"'"',
                    flags: ['"'"'--no-sandbox'"'"']
                }
            },
            coverageExcludes: ['

