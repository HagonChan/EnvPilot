ls -la
open "package.json"
open ".nvmrc"
node --version && npm --version
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
apt-get update && apt-get install -y curl
apt-get update --allow-insecure-repositories && apt-get install -y curl
apt-get install -y curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
nvm install lts/*
node --version && npm --version
npm install
npm test
npx playwright install
apt-get install -y libglib2.0-0 libnss3 libnspr4 libdbus-1-3 libatk1.0-0 libatk-bridge2.0-0 libcups2 libdrm2 libxkbcommon0 libxcomposite1 libxdamage1 libxfixes3 libxrandr2 libgbm1 libpango-1.0-0 libcairo2 libasound2 libatspi2.0-0
npx playwright install
apt-get install -y libx11-xcb1 libxcursor1 libgtk-3-0 libpangocairo-1.0-0 libcairo-gobject2 libgdk-pixbuf-2.0-0
npx playwright install
apt-get install -y libgstreamer1.0-0 libatomic1 libxslt1.1 libwoff2dec1.0.2 libvpx7 libevent-2.1-7 libopus0 libgstreamer-plugins-base1.0-0 libwebpdemux2 libharfbuzz-icu0 libenchant-2-2 libsecret-1-0 libhyphen0 libmanette-0.2-0 libflite1 libgl1-mesa-glx libx264-163
apt-get install -y libgstreamer1.0-0 libatomic1 libxslt1.1 libvpx7 libevent-2.1-7 libopus0 libgstreamer-plugins-base1.0-0 libwebpdemux2 libharfbuzz-icu0 libenchant-2-2 libsecret-1-0 libhyphen0 libmanette-0.2-0 libflite1 libgl1-mesa-glx libx264-163
npx playwright install
apt-get install -y libwoff2dec1.0.2 libgstreamer-gl1.0-0 libgstreamer-codecparsers1.0-0 libgles2
apt-get install -y libgstreamer-gl1.0-0 libgles2
npx playwright install
npm test
apt-get install -y google-chrome-stable
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - && echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list && apt-get update && apt-get install -y google-chrome-stable
apt-get install -y wget gnupg
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - && echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list && apt-get update && apt-get install -y google-chrome-stable
google-chrome-stable --version
npm test
find_file 'karma.conf*'
open "karma.conf.cjs"
cat karma.conf.cjs
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
      ChromeHeadless: {
        base: '"'"'ChromeHeadless'"'"',
        flags: ['"'"'--no-sandbox'"'"']
      }
    },'
edit 'customLaunchers: {
      ChromeDebugging: {
        base: '"'"'Chrome'"'"',
        flags: ['"'"'--remote-debugging-port=9222'"'"'],
        debug: true
      }
    }' 'customLaunchers: {
      ChromeDebugging: {
        base: '"'"'Chrome'"'"',
        flags: ['"'"'--remote-debugging-port=9222'"'"'],
        debug: true
      },
      ChromeHeadless: {
        base: '"'"'ChromeHeadless'"'"',
        flags: ['"'"'--no-sandbox'"'"']
      }
    }'
open "karma.conf.cjs"
edit 'customLaunchers: {
      ChromeDebugging: {
        base: '"'"'Chrome'"'"',
        flags: ['"'"'--remote-debugging-port=9222'"'"'],
        debug: true
      }' 'customLaunchers: {
      ChromeDebugging: {
        base: '"'"'Chrome'"'"',
        flags: ['"'"'--remote-debugging-port=9222'"'"'],
        debug: true
      },
      ChromeHeadless: {
        base: '"'"'ChromeHeadless'"'"',
        flags: ['"'"'--no-sandbox'"'"']
      }'
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
      ChromeHeadless: {
        base: '"'"'ChromeHeadless'"'"',
        flags: ['"'"'--no-sandbox'"'"']
      }
    },'
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
      ChromeHeadless: {
        base: '"'"'ChromeHeadless'"'"',
        flags: ['"'"'--no-sandbox'"'"']
      }
    },'
open "karma.conf.cjs"
open "karma.conf.cjs"
open "karma.conf.cjs"
open "karma.conf.cjs"
open "karma.conf.cjs"
open "karma.conf.cjs"

