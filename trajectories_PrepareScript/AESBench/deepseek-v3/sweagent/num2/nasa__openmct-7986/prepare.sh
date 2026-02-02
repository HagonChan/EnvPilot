ls -la
ls -la .github/workflows
open ".github/workflows/e2e-couchdb.yml"
open "package.json"
open "README.md"
npm install
apt-get update && apt-get install -y nodejs npm
npm install
apt-cache policy nodejs
curl -fsSL https://deb.nodesource.com/setup_18.x | bash -
apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_18.x | bash -
apt-get install -y nodejs
apt-get remove -y libnode-dev
apt-get install -y nodejs
apt-get remove -y libnode72
dpkg --force-all -r libnode72
apt-get install -y nodejs
node --version && npm --version
npm install
npm test
apt-get install -y wget && wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && apt-get install -y ./google-chrome-stable_current_amd64.deb
export CHROME_BIN=/usr/bin/google-chrome-stable && npm test
open "karma.conf.cjs"
edit 'customLaunchers: {
      ChromeDebugging: {
        base: '"'"'Chrome'"'"',
        flags: ['"'"'--remote-debugging-port=9222'"'"'],
        debug: true
      }
    },' 'customLaunchers: {
      ChromeDebugging: {
        base: '"'"'Chrome'"'"',
        flags: ['"'"'--remote-debugging-port=9222'"'"'],
        debug: true
      },
      ChromeHeadlessNoSandbox: {
        base: '"'"'ChromeHeadless'"'"',
        flags: ['"'"'--no-sandbox'"'"']
      }
    },'
edit 'browsers: ['"'"'ChromeHeadless'"'"'],' 'browsers: ['"'"'ChromeHeadlessNoSandbox'"'"'],'
npm test
npm run test:e2e:couchdb
npx playwright install
apt-get update && apt-get install -y libopus0 libgstreamer-plugins-base1.0-0 libgstreamer1.0-0 libharfbuzz-icu0 libenchant-2-2 libsecret-1-0 libhyphen0 libmanette-0.2-0 flite libflite1 libx264-163
npx playwright install
apt-get update && apt-get install -y libxslt1.1 libwoff1 libvpx7 libevent-2.1-7 libgstreamer-gl1.0-0 libgstreamer-codecparsers1.0-0 libwebpdemux2 libgles2
npx playwright install
apt-get install -y libgstreamer-plugins-bad1.0-0
npx playwright install
npx playwright install-deps
npx playwright install
npm run test:e2e:couchdb
systemctl status couchdb
which couchdb
apt-get update && apt-get install -y couchdb
curl -sL https://couchdb.apache.org/repo/keys.asc | gpg --dearmor | sudo tee /usr/share/keyrings/couchdb-archive-keyring.gpg >/dev/null 2>&1 && echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/couchdb.list >/dev/null
curl -sL https://couchdb.apache.org/repo/keys.asc -o /tmp/couchdb.key && sudo apt-key add /tmp/couchdb.key
echo "deb https://apache.jfrog.io/artifactory/couchdb-deb/ $(lsb_release -cs) main" > /etc/apt/sources.list.d/couchdb.list
echo "deb https://apache.jfrog.io/artifactory/couchdb-deb/ jammy main" > /etc/apt/sources.list.d/couchdb.list && apt-get update
curl -sL https://couchdb.apache.org/repo/keys.asc | gpg --dearmor -o /usr/share/keyrings/couchdb-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ jammy main" > /etc/apt/sources.list.d/couchdb.list && apt-get update
apt-get install -y couchdb
dpkg --configure -a

