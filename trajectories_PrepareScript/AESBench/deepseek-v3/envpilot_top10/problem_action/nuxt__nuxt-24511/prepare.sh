ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "package.json"
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
apt-get update && apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
npm install -g pnpm@8.11.0
pnpm --version
pnpm install
pnpm test
ls -la node_modules/@nuxt
pnpm install --force
pnpm test
open "pnpm-lock.yaml"
pnpm add @nuxt/kit
pnpm add @nuxt/kit -w
pnpm test
ls -la packages
pnpm rebuild
pnpm test
ls -la packages/kit
cd packages/kit && pnpm link
cd packages/kit && pnpm link --global
cd /testbed && pnpm link packages/kit
pnpm install --shamefully-hoist
pnpm test
open "packages/kit/package.json"
cd packages/kit && pnpm link --global
cd /testbed && pnpm link @nuxt/kit
pnpm test
ls -la test/fixtures/basic
open "test/fixtures/basic/package.json"
edit '"dependencies": {
    "@nuxt/webpack-builder": "workspace:*",
    "nuxt": "workspace:*"
  },' '"dependencies": {
    "@nuxt/webpack-builder": "workspace:*",
    "nuxt": "workspace:*",
    "@nuxt/kit": "workspace:*"
  },'
cd test/fixtures/basic && pnpm install
cd /testbed && pnpm test
nuxi --help
ls -la node_modules/.bin
pnpm exec nuxi --help
pnpm test
cd packages/kit && pnpm link --global
cd /testbed && pnpm link @nuxt/kit
pnpm test
nuxi --help
ls -la node_modules/.bin
pnpm exec nuxi --help
pnpm test
cd packages/kit && pnpm link --global
cd /testbed && pnpm link @nuxt/kit

