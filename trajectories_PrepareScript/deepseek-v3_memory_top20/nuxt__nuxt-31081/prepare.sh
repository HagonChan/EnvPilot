ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "package.json"
curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - && apt-get install -y nodejs
node --version
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
apt-get install -y curl
apt-get update
apt-get install -y curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
nvm install --lts
node --version && npm --version
npm install -g pnpm
pnpm --version
pnpm install
pnpm exec playwright install-deps
apt-get update && apt-get install -y libnss3 libnspr4 libatk1.0-0 libatk-bridge2.0-0 libcups2 libxkbcommon0 libatspi2.0-0 libxdamage1 libpango-1.0-0 libcairo2 libasound2 libglib2.0-0 libgtk-3-0 libpng16-16 libevent-2.1-7 libicu-dev libffi-dev libx264-dev
pnpm test
ls -la packages
open "test/setup-env.ts"
open "packages/kit/package.json"
open "packages/kit/dist/index.mjs"
cd packages/kit && pnpm prepack && cd ../..
ls -la packages/schema
ls -la packages
cd .. && ls -la
cd schema && pnpm prepack && cd ..
cd kit && pnpm prepack && cd ..
cd ../nuxt && pnpm prepack && cd ..
open "packages/nuxt/src/core/builder.ts"
cd /testbed && rm -rf * && git clone https://github.com/nuxt/nuxt.git .
cd /testbed && rm -rf * && rm -rf .* && git clone https://github.com/nuxt/nuxt.git .
cd /testbed && git clone https://github.com/nuxt/nuxt.git .
ls -la
curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - && apt-get install -y nodejs
node --version && npm --version
npm install -g pnpm
pnpm --version
pnpm install
pnpm exec playwright install-deps
pnpm test
cd packages/kit && pnpm prepack && cd ../..
pnpm test
cd packages/nuxt && pnpm prepack && cd ../..
pnpm test
cd packages/schema && pnpm prepack && cd ../..
pnpm test

