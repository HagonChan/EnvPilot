ls -la
ls -la .github/workflows
ls -la .circleci
open ".circleci/config.yml"
open "package.json"
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
apt-get update && apt-get install -y ca-certificates curl gnupg && mkdir -p /etc/apt/keyrings && curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg && echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_20.x nodistro main" | tee /etc/apt/sources.list.d/nodesource.list && apt-get update && apt-get install nodejs -y
npm install -g yarn
node --version && yarn --version
npm install -g yarn@4.0.2
npm install -g yarn@latest
yarn --version
which yarn
npm uninstall -g yarn && npm install -g yarn@latest
yarn --version
yarn install --immutable
corepack enable
corepack prepare yarn@4.0.2 --activate
yarn --version
yarn install
yarn test
nx view-logs
./node_modules/.bin/nx view-logs
cat ./dist/logs/@blueprintjs/core/test.log
ls -la ./dist
ls -la
ls -la .nx
ls -la .nx/cache
ls -la .nx/cache/terminalOutputs
cat .nx/cache/terminalOutputs/10412331327674710407
apt-get install -y firefox-esr
apt-get install -y firefox
find_file 'karma.conf*'
open "/testbed/packages/core/karma.conf.js"
find_file karma-build-scripts
ls -la node_modules/@blueprintjs/karma-build-scripts
open "/testbed/packages/karma-build-scripts/index.js"
ls -la /testbed/packages/karma-build-scripts
open "/testbed/packages/karma-build-scripts/createKarmaConfig.mjs"
edit 'browsers: ["ChromeHeadless"],' 'browsers: ["Firefox"],' False
edit '"karma-chrome-launcher",' '"karma-chrome-launcher",
            "karma-firefox-launcher",' False
yarn add -D karma-firefox-launcher
yarn test
cat ./dist/logs/@blueprintjs/core/test.log
ls -la .nx/cache/terminalOutputs
cat .nx/cache/terminalOutputs/11736681498019050497
snap install firefox
apt-get update && apt-get install -y wget && wget -qO- https://packages.mozilla.org/apt/mozilla-archive-keyring.gpg | gpg --dearmor | tee /etc/apt/trusted.gpg.d/mozilla-archive-keyring.gpg > /dev/null && echo "deb [signed-by=/etc/apt/trusted.gpg.d/mozilla-archive-keyring.gpg] https://packages.mozilla.org/apt mozilla main" | tee /etc/apt/sources.list.d/mozilla.list && apt-get update && apt-get install -y firefox
wget -O firefox.tar.bz2 "https://download.mozilla.org/?product=firefox-latest-ssl&os=linux64&lang=en-US" && tar xjf firefox.tar.bz2 -C /opt && ln -s /opt/firefox/firefox /usr/local/bin/firefox

