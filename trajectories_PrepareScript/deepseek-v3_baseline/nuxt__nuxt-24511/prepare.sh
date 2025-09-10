ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "package.json"
pnpm install
npm install -g pnpm@8.11.0
apt update && apt install -y nodejs
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
apt install -y curl
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
node --version && npm --version
npm install -g pnpm@8.11.0
pnpm install
pnpm test
ls -la node_modules/@nuxt/kit
search_file @nuxt/kit package.json
pnpm install --force
ls -la node_modules/@nuxt/kit
ls -la packages/
pnpm install --force --workspace-root
ls -la node_modules/@nuxt/kit
pnpm link ./packages/kit
ls -la node_modules/@nuxt/kit
pnpm test
open "vitest.config.ts"
ls -la test/fixtures/basic
open "test/fixtures/basic/package.json"
cd test/fixtures/basic && pnpm install
cd ../../../ && pnpm test
cd test/fixtures/basic && pnpm link ../../../packages/kit
cd ../../../ && pnpm test
open "node_modules/.pnpm/nuxi@3.10.0/node_modules/nuxi/dist/shared/nuxi.70ab727b.mjs" 7965
ls -la packages/kit/dist
cd packages/kit && pnpm build
open "packages/kit/package.json"
find . -name package.json | grep -i kit
cd ../../ && ls -la
open "pnpm-workspace.yaml"
git status
git reset --hard
pnpm install --force
ls -la node_modules/@nuxt/kit
pnpm test
open "node_modules/.pnpm/nuxi@3.10.0/node_modules/nuxi/dist/shared/nuxi.70ab727b.mjs" 7965
ls -la packages/kit/package.json
open "packages/kit/package.json"
cd packages/kit && pnpm prepack
ls -la node_modules/@nuxt/schema
cd ../../schema && pnpm prepack

