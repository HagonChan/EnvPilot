ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
pnpm --version
npm --version
curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - && apt-get install -y nodejs
npm --version
apt-get install -y npm
apt-get update && apt-get install -y npm
apt-get install -y npm --fix-missing
npm --version
npm install -g pnpm
pnpm --version
apt-get remove -y nodejs npm && curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - && apt-get install -y nodejs
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode-dev && curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode72 libnode-dev && curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
dpkg --remove --force-depends libnode72 && curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
node --version && npm --version
npm install -g pnpm
pnpm --version
pnpm install
pnpm test
ls -la packages/kit
open "test/setup-env.ts"
open "packages/kit/src/index.ts"
pnpm build
open "packages/kit/src/loader/nuxt.ts"
pnpm list nuxt
cd packages/nuxt && pnpm build
open "packages/nuxt/package.json"
ls -la
open "packages/nuxt/package.json"
cd /home/nuxt && pnpm install --force
pnpm build
open "packages/kit/src/loader/nuxt.ts"
edit 'const { loadNuxt } = await importModule<typeof import('"'"'nuxt'"'"')>((pkg as any)._name || pkg.name, { url: rootURL })' 'const { loadNuxt } = await import('"'"'nuxt'"'"')'
edit 'const { build } = await tryImportModule<typeof import('"'"'nuxt'"'"')>('"'"'nuxt-nightly'"'"', { url: rootURL }) || await importModule<typeof import('"'"'nuxt'"'"')>('"'"'nuxt'"'"', { url: rootURL })' 'const { build } = await import('"'"'nuxt'"'"')'
pnpm build
cd packages/nuxt && pnpm build
open "packages/nuxt/package.json"
cd /home/nuxt && pnpm install --force
pnpm build
cd packages/nuxt && pnpm run build
cd /home/nuxt && pnpm -w run build
cd packages/nuxt && pnpm exec unbuild
open "packages/nuxt/src/core/builder.ts"

