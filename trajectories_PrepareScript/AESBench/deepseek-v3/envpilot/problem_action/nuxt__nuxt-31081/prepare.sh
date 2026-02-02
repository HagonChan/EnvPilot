ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
apt-get update && apt-get install -y libnss3 libnspr4 libatk1.0-0t64 libatk-bridge2.0-0t64 libcups2t64 libxkbcommon0 libatspi2.0-0t64 libxdamage1 libpango-1.0-0 libcairo2 libasound2t64 libglib2.0-0t64 libgtk-3-0t64 libpng16-16t64 libevent-2.1-7t64 libicu-dev libffi-dev libx264-dev
apt-get update && apt-get install -y libnss3 libatk1.0-0 libatk-bridge2.0-0 libcups2 libdbus-1-3 libexpat1 libgcc1 libgconf-2-4 libgdk-pixbuf2.0-0 libglib2.0-0 libgtk-3-0 libpango-1.0-0 libpangocairo-1.0-0 libstdc++6 libx11-6 libx11-xcb1 libxcb1 libxcomposite1 libxcursor1 libxdamage1 libxext6 libxfixes3 libxi6 libxrandr2 libxrender1 libxss1 libxtst6 ca-certificates fonts-liberation libgbm-dev libasound2
curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - && apt-get install -y nodejs
curl -fsSL https://get.pnpm.io/install.sh | sh -
apt-get install -y curl
curl -fsSL https://get.pnpm.io/install.sh | sh -
export SHELL=/bin/bash && curl -fsSL https://get.pnpm.io/install.sh | sh -

