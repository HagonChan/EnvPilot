ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
node --version
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
apt-get remove -y nodejs && curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
apt-get update && apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
node --version
corepack enable && corepack prepare pnpm@latest --activate
pnpm --version
npm install -g pnpm
npm install -g pnpm --force
pnpm --version
pnpm install
pnpm build:stub
pnpm typecheck
pnpm build
pnpm test
pnpm exec playwright install
pnpm add -D @playwright/test
pnpm add -D @playwright/test -w
pnpm exec playwright install
apt-get install -y libxcb-shm0 libx11-xcb1 libxrandr2 libxcomposite1 libxcursor1 libxdamage1 libxfixes3 libxi6 libgtk-3-0 libpangocairo-1.0-0 libpango-1.0-0 libatk1.0-0 libcairo-gobject2 libcairo2 libgdk-pixbuf-2.0-0 libglib2.0-0 libxrender1 libasound2 libfreetype6 libfontconfig1 libdbus-1-3
pnpm exec playwright install
apt-get install -y libgstreamer1.0-0 libgtk-4-1 libgraphene-1.0-0 libatomic1 libxslt1.1 libevent-2.1-7 libopus0 libgstreamer-plugins-base1.0-0 libflite1 libwebpdemux2 libavif13 libharfbuzz-icu0 libwebpmux3 libwayland-server0 libmanette-0.2-0 libenchant-2-2 libgbm1 libhyphen0 libsecret-1-0 libwoff1 libgles2 libx264-163
pnpm exec playwright install
apt-get install -y libgstreamer-plugins-bad1.0-0
pnpm exec playwright install
apt-get install -y libgstreamer-gl1.0-0
pnpm exec playwright install
pnpm test
pnpm exec playwright install
pnpm test
pnpm exec playwright install --with-deps
pnpm test
ls -la /root/.cache/ms-playwright/chromium-1091/chrome-linux/
pnpm exec playwright install --force
ls -la /root/.cache/ms-playwright/chromium-1091/chrome-linux/
pnpm exec playwright install --with-deps
ls -la /root/.cache/ms-playwright/chromium-1091/chrome-linux/
pnpm exec playwright install --force
ls -la /root/.cache/ms-playwright/chromium-1091/chrome-linux/
pnpm exec playwright install --force
ls -la /root/.cache/ms-playwright/chromium-1091/chrome-linux/
pnpm exec playwright install --force
ls -la /root/.cache/ms-playwright/chromium-1091/chrome-linux/
pnpm exec playwright --version
pnpm exec playwright install --force

