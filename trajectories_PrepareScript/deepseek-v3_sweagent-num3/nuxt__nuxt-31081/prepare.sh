ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
goto 150
open "package.json"
pnpm install
npm install -g pnpm
sudo apt update && sudo apt install -y nodejs npm
apt update && apt install -y nodejs npm
npm install -g pnpm
pnpm install
apt remove -y nodejs npm && curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt install -y nodejs
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt install -y curl
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt remove -y libnode-dev && curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt remove -y libnode-dev libnode72 && curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt remove -y --purge libnode72 && curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
rm -f /usr/share/systemtap/tapset/node.stp && apt remove -y --purge libnode72 && curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
dpkg -r --force-all libnode72 && curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
node --version
npm install -g pnpm
pnpm install
pnpm test
open "test/setup-env.ts"
ls -la packages
edit 'import { logger } from '"'"'../packages/kit'"'"'' 'import { logger } from '"'"'../../packages/kit'"'"'' True
pnpm test
ls -la packages/kit
open "packages/kit/package.json"
edit 'import { logger } from '"'"'../../packages/kit'"'"'' 'import { logger } from '"'"'@nuxt/kit'"'"'' True
edit 'import { logger } from '"'"'../../packages/kit'"'"'' 'import { logger } from '"'"'@nuxt/kit'"'"'' True
open "test/setup-env.ts"
edit 'import { logger } from '"'"'../../packages/kit'"'"'' 'import { logger } from '"'"'@nuxt/kit'"'"'' True
pnpm test
cd packages/kit && pnpm build
cd packages/kit && pnpm prepack
open "packages/kit/package.json"
pwd
cd /testbed && ls -la packages/kit
open "packages/kit/package.json"
cd packages/kit && pnpm prepack
cd /testbed/packages/kit && pnpm install
cd /testbed/packages/kit && pnpm prepack
ls -la /testbed/packages
cd /testbed && pnpm install
cd /testbed/packages/kit && pnpm prepack
cd /testbed/packages/schema && pnpm prepack
cd /testbed/packages/kit && pnpm prepack

