ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "package.json"
pnpm --version
npm install -g pnpm@8.10.5
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
npm install -g pnpm@8.10.5
node --version
apt-get remove -y nodejs && curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
apt-get update && apt-get install -y curl
apt-get remove -y nodejs && curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
node --version && npm --version
npm install -g pnpm@8.10.5
pnpm --version
pnpm install
pnpm exec playwright install-deps
pnpm exec playwright-core install-deps
pnpm exec playwright-core install
pnpm test
pnpm install --force
pnpm test
search_file @nuxt/kit package.json
pnpm install --force --shamefully-hoist
pnpm test
find_file README.md
open "/testbed/README.md"
find_file CONTRIBUTING.md
ls -la packages
pnpm install --force --shamefully-hoist
pnpm test
cd packages/kit && pnpm build
open "packages/kit/package.json"
search_file build package.json
cd packages/kit && pnpm prepack
ls -la packages
pnpm add @nuxt/kit --save-dev
pnpm test
cd /testbed && pnpm test
find_file nuxi.config.ts
find_file '*.config.ts'
open "/testbed/vitest.config.ts"
open "/testbed/vitest.nuxt.config.ts"
open "/testbed/test/setup.ts"
