ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "package.json"
pnpm --version
npm install -g pnpm@8.10.5
curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - && apt-get install -y nodejs
npm install -g pnpm@8.10.5
node --version
which npm
find / -name npm 2>/dev/null
export PATH=$PATH:/nix/store/2djgcjvx3c183zcdprylsx9p1a6rmwwk-nodejs-20.18.3/bin && npm install -g pnpm@8.10.5
pnpm --version
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
search_file '"engines"' package.json
npm uninstall -g pnpm && npm install -g pnpm@6.32.9
pnpm --version
pnpm install
pnpm install --ignore-scripts
pnpm test
