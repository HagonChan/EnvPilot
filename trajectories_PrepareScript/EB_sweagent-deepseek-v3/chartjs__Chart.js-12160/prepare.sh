ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
pnpm --version
curl -fsSL https://get.pnpm.io/install.sh | sh -
apt-get update && apt-get install -y curl
curl -fsSL https://get.pnpm.io/install.sh | sh -
SHELL=bash curl -fsSL https://get.pnpm.io/install.sh | sh -
wget -qO- https://get.pnpm.io/install.sh | sh -
apt-get install -y wget
wget -qO- https://get.pnpm.io/install.sh | sh -
npm --version
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
npm install -g pnpm
pnpm --version
npm uninstall -g pnpm && npm install -g pnpm@7.33.6
pnpm --version
pnpm install
cat package.json
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
node --version && npm --version
npm install -g pnpm
sleep 5 && npm install -g pnpm
curl -s https://api.github.com/repos/pnpm/pnpm/releases/latest | grep 'browser_download_url.*linux-x64' | cut -d '"' -f 4
wget https://github.com/pnpm/pnpm/releases/download/v8.15.3/pnpm-linux-x64 && chmod +x pnpm-linux-x64 && mv pnpm-linux-x64 /usr/local/bin/pnpm
corepack enable && corepack prepare pnpm@latest --activate
npm config set registry https://registry.npmmirror.com && npm install -g pnpm
pnpm --version
pnpm install
pnpm run lint
pnpm run build
pnpm run test-ci
apt-get update && apt-get install -y wget && wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - && echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list && apt-get update && apt-get install -y google-chrome-stable firefox
which google-chrome-stable || which firefox
open "./karma.conf.cjs"
edit 'customLaunchers: {
      chrome: {
        base: '"'"'Chrome'"'"',
        flags: [
          '"'"'--disable-accelerated-2d-canvas'"'"',
          '"'"'--disable-background-timer-throttling'"'"',
          '"'"'--disable-backgrounding-occluded-windows'"'"',
          '"'"'--disable-renderer-backgrounding'"'"'
        ]
      },
      firefox: {
        base: '"'"'Firefox'"'"',
        prefs: {
          '"'"'layers.acceleration.disabled'"'"': true,
          '"'"'gfx.canvas.accelerated'"'"': false
        }
      },
      safari: {
        base: '"'"'SafariPrivate'"'"'
      },
      edge: {
        base: '"'"'Edge'"'"'
      }' 'customLaunchers: {
      chrome: {
        base: '"'"'Chrome'"'"',
        flags: [
          '"'"'--disable-accelerated-2d-canvas'"'"',
          '"'"'--disable-background-timer-throttling'"'"',
          '"'"'--disable-backgrounding-occluded-windows'"'"',
          '"'"'--disable-renderer-backgrounding'"'"'
        ]
      },
      chromeHeadless: {
        base: '"'"'ChromeHeadless'"'"',
        flags: [
          '"'"'--disable-accelerated-2d-canvas'"'"',
          '"'"'--disable-background-timer-throttling'"'"',
          '"'"'--disable-backgrounding-occluded-windows'"'"',
          '"'"'--disable-renderer-backgrounding'"'"'
        ]
      },
      firefox: {
        base: '"'"'Firefox'"'"',
        prefs: {
          '"'"'layers.acceleration.disabled'"'"': true,
          '"'"'gfx.canvas.accelerated'"'"': false
        }
      },
      firefoxHeadless: {
        base: '"'"'FirefoxHeadless'"'"',
        prefs: {
          '"'"'layers.acceleration.disabled'"'"': true,
          '"'"'gfx.canvas.accelerated'"'"': false
        }
      },
      safari: {
        base: '"'"'SafariPrivate'"'"'
      },
      edge: {
        base: '"'"'Edge'"'"'
      }' True
edit 'browsers: (args.browsers || '"'"'chrome,firefox'"'"').split('"'"','"'"'),' 'browsers: (args.browsers || '"'"'chromeHeadless,firefoxHeadless'"'"').split('"'"','"'"'),' True
pnpm run test-ci
apt-get update && apt-get install -y wget && wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - && echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list && apt-get update && apt-get install -y google-chrome-stable firefox
which google-chrome-stable || which firefox
open "./karma.conf.cjs"
pnpm add -D puppeteer
pnpm add -D puppeteer -w
which chromium-browser || which chromium
cat package.json
pnpm test-ci-integration
