ls -la
ls -la .github/workflows
open ".github/workflows/e2e-couchdb.yml"
nvm install lts/hydrogen && nvm use lts/hydrogen
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
apt-get update && apt-get install -y curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
nvm install lts/hydrogen && nvm use lts/hydrogen
npm ci --no-audit --progress=false
npx playwright install
apt-get install -y libglib2.0-0 libnss3 libnspr4 libdbus-1-3 libatk1.0-0 libatk-bridge2.0-0 libcups2 libdrm2 libxkbcommon0 libxcomposite1 libxdamage1 libxfixes3 libxrandr2 libgbm1 libpango-1.0-0 libcairo2 libasound2 libatspi2.0-0
npx playwright install
apt-get install -y libx11-xcb1 libxcursor1 libgtk-3-0 libpangocairo-1.0-0 libcairo-gobject2 libgdk-pixbuf-2.0-0
npx playwright install
apt-get install -y libgstreamer1.0-0 libatomic1 libxslt1.1 libwoff2dec1.0.2 libvpx7 libevent-2.1-7 libopus0 libgstreamer-plugins-base1.0-0 libenchant-2-2 libsecret-1-0 libhyphen0 libmanette-0.2-0 libflite1 libgl1-mesa-glx libx264-163
apt-get install -y libgstreamer1.0-0 libatomic1 libxslt1.1 libvpx7 libevent-2.1-7 libopus0 libgstreamer-plugins-base1.0-0 libenchant-2-2 libsecret-1-0 libhyphen0 libmanette-0.2-0 libflite1 libgl1-mesa-glx libx264-163
npx playwright install
apt-get install -y libwoff2dec1.0.2 libgstreamer-gl1.0-0 libgstreamer-codecparsers1.0-0 libwebpdemux2 libharfbuzz-icu0 libgles2
open "package.json"
npm run test:e2e:couchdb
search_file test: package.json
npm run test:debug
search_file test:lint package.json
search_file test package.json
