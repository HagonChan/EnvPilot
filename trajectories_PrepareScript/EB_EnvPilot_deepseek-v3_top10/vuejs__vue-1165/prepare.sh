ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
node --version
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
node --version
apt-get update && apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode72
apt-get remove -y --purge libnode72
dpkg -r --force-all libnode72
apt-get install -y nodejs
node --version
npm install -g pnpm
pnpm --version
pnpm install
pnpm run test:unit
pnpm run test:ssr
pnpm run test:e2e
apt-get update && apt-get install -y libgobject-2.0-0
apt-get install -y libglib2.0-0
pnpm run test:e2e
apt-get install -y libnss3 libxss1 libasound2 libatk-bridge2.0-0 libgtk-3-0 libgbm1
pnpm run test:e2e
find_file 'test/e2e/**/*.ts'
ls -la test/e2e
open "test/e2e/e2eUtils.ts"
echo $CI
export CI=true && pnpm run test:e2e
pnpm run ts-check
pnpm run test:types
pnpm run test:ssr
pnpm run test:sfc
