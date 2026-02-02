ls -la
ls -la .github/workflows
open ".github/workflows/e2e-pr.yml"
open "package.json"
open ".nvmrc"
nvm install lts/hydrogen && nvm use lts/hydrogen
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
apt-get update && apt-get install -y curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm install lts/hydrogen && nvm use lts/hydrogen
apt-get update && apt-get install -y libnss3 libnspr4 libatk1.0-0 libatk-bridge2.0-0 libcups2 libxkbcommon0 libatspi2.0-0 libxdamage1 libpango-1.0-0 libcairo2 libasound2 libglib2.0-0 libgtk-3-0 libpng16-16 libevent-2.1-7 libicu-dev libffi-dev libx264-dev
npm ci --no-audit --progress=false
node -v && npm -v
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && node -v && npm -v
source ~/.nvm/nvm.sh && node -v && npm -v
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash && export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm install lts/hydrogen && nvm use lts/hydrogen
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && node -v && npm -v
apt-get update && apt-get install -y nodejs npm
node -v && npm -v
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode-dev && curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode72 && curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt-get remove -y --purge libnode72 libnode-dev && curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt-get remove -y --purge libnode72 libnode-dev && curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt-get clean && apt-get update && apt-get install -y nodejs
apt-get autoremove -y && apt-get clean && apt-get update && apt-get install -y nodejs
curl -o node-v18.20.8-linux-x64.tar.xz https://nodejs.org/dist/v18.20.8/node-v18.20.8-linux-x64.tar.xz && tar -xf node-v18.20.8-linux-x64.tar.xz && cp -r node-v18.20.8-linux-x64/* /usr/local/
apt-get install -y xz-utils && tar -xf node-v18.20.8-linux-x64.tar.xz && cp -r node-v18.20.8-linux-x64/* /usr/local/
rm -rf /var/cache/apt/archives/* && apt-get install -y xz-utils && tar -xf node-v18.20.8-linux-x64.tar.xz && cp -r node-v18.20.8-linux-x64/* /usr/local/
curl -o node-v18.20.8-linux-x64.tar.gz https://nodejs.org/dist/v18.20.8/node-v18.20.8-linux-x64.tar.gz && tar -xzf node-v18.20.8-linux-x64.tar.gz && cp -r node-v18.20.8-linux-x64/* /usr/local/
node -v && npm -v
ln -sf /usr/local/node-v18.20.8-linux-x64/bin/node /usr/bin/node && ln -sf /usr/local/node-v18.20.8-linux-x64/bin/npm /usr/bin/npm && node -v && npm -v
ls -la node-v18.20.8-linux-x64/bin/
cp node-v18.20.8-linux-x64/bin/node /usr/local/bin/ && cp node-v18.20.8-linux-x64/bin/npm /usr/local/bin/ && ln -sf /usr/local/bin/node /usr/bin/node && ln -sf /usr/local/bin/npm /usr/bin/npm && node -v && npm -v
npm ci --no-audit --progress=false
npx playwright install
apt-get install -y libdrm2 libgbm1
rm -rf /var/cache/apt/archives/* && apt-get install -y libdrm2 libgbm1
curl -O http://archive.ubuntu.com/ubuntu/pool/main/libd/libdrm/libdrm2_2.4.113-2_amd64.deb && curl -O http://archive.ubuntu.com/ubuntu/pool/main/libg/libgbm/libgbm1_23.2.1-1ubuntu3_amd64.deb && dpkg -i libdrm2_2.4.113-2_amd64.deb libgbm1_23.2.1-1ubuntu3_amd64.deb
curl -O http://security.ubuntu.com/ubuntu/pool/main/libd/libdrm/libdrm2_2.4.113-2_amd64.deb && curl -O http://security.ubuntu.com/ubuntu/pool/main/libg/libgbm/libgbm1_23.2.1-1ubuntu3_amd64.deb && dpkg -i libdrm2_2.4.113-2_amd64.deb libgbm1_23.2.1-1ubuntu3_amd64.deb
npm run test:e2e:full -- --max-failures=40
npx playwright show-report ../html-test-results
