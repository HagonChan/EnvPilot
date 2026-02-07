ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/test.yaml"
node --version && yarn --version
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
node --version && yarn --version
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs && npm install -g yarn
apt-get update && apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs && npm install -g yarn
apt-get remove -y libnode72 && curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs && npm install -g yarn
apt-get purge -y nodejs libnode72 && curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs && npm install -g yarn
node --version && yarn --version
yarn install
yarn build
yarn test
NODE_OPTIONS='--max-old-space-size=4096' yarn test
open "vitest.config.ts"
NODE_OPTIONS='--max-old-space-size=4096' yarn test ./test/index.spec.ts
ls -la test
NODE_OPTIONS='--max-old-space-size=4096' yarn test ./test/applyMiddleware.spec.ts
edit 'export default defineConfig({
  test: {
    globals: true,' 'export default defineConfig({
  test: {
    globals: true,
    poolOptions: {
      threads: {
        useAtomics: false,
      },
    },'
NODE_OPTIONS='--max-old-space-size=4096' yarn test
edit 'export default defineConfig({
  test: {
    globals: true,
    poolOptions: {
      threads: {
        useAtomics: false,
      },
    },' 'export default defineConfig({
  test: {
    globals: true,
    threads: false,'
NODE_OPTIONS='--max-old-space-size=4096' yarn test
