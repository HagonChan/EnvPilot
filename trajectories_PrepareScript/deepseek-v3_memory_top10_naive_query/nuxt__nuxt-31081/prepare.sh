ls -la
open "package.json"
open ".github/workflows"
ls -la .github/workflows
open ".github/workflows/ci.yml"
curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - && apt-get install -y nodejs
npm install -g pnpm
node --version
apt-get update && apt-get install -y npm
npm install -g pnpm
curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - && apt-get install -y nodejs
apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode-dev && apt-get install -y nodejs
node --version && npm --version
npm install -g pnpm
pnpm install
pnpm install
pnpm test
open "test/setup-env.ts"
ls -la packages
ls -la packages/kit
ls -la packages/kit/src
pnpm --filter @nuxt/kit build
pnpm install
pnpm test
edit 'import { logger } from '"'"'../packages/kit'"'"'' 'import { logger } from '"'"'@nuxt/kit'"'"''
pnpm test
pnpm run build
open "packages/kit/src/loader/nuxt.ts"
pnpm install
pnpm list nuxt
pnpm --filter @nuxt/nuxt build
pnpm --filter ./packages/nuxt build
open "packages/nuxt/package.json"
pnpm --filter ./packages/nuxt prepack
open "packages/nuxt/src/core/builder.ts"
edit 'src/core/builder.ts(105,58): error TS7006: Parameter '"'"'i'"'"' implicitly has an '"'"'any'"'"' type.' 'src/core/builder.ts(105,58): error TS7006: Parameter '"'"'i'"'"' implicitly has an '"'"'any'"'"' type.'
edit '(i) =>' '(i: number) =>'
edit '(i) =>' '(i: number) =>'

