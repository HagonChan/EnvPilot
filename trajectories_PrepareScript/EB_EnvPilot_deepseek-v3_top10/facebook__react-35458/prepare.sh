ls -la
open ".nvmrc"
nvm --version
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
apt-get update && apt-get install -y curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
nvm install 20.19.0
node --version && npm --version
yarn --version
npm install -g yarn
yarn --version
yarn install --frozen-lockfile
yarn build
apt-get install -y openjdk-11-jre
yarn build
yarn add --dev @types/babel__code-frame
yarn add --dev -W @types/babel__code-frame
yarn build
open "scripts/rollup/build-all-release-channels.js"
find_file rollup.config.js
edit 'const Bundles = require('"'"'./bundles'"'"');' 'const Bundles = require('"'"'./bundles'"'"');
const builtins = require('"'"'rollup-plugin-node-builtins'"'"');'
yarn add --dev rollup-plugin-node-builtins
yarn add --dev -W rollup-plugin-node-builtins
yarn build
edit 'const builtins = require('"'"'rollup-plugin-node-builtins'"'"');' 'const builtins = require('"'"'rollup-plugin-node-builtins'"'"');
const tty = require('"'"'tty'"'"');'
yarn build
edit 'const builtins = require('"'"'rollup-plugin-node-builtins'"'"');
const tty = require('"'"'tty'"'"');' 'const builtins = require('"'"'rollup-plugin-node-builtins'"'"');
const tty = require('"'"'tty'"'"');
const external = ['"'"'tty'"'"'];'
yarn build
edit 'const external = ['"'"'tty'"'"'];' 'const external = ['"'"'tty'"'"'];
const rollupConfig = {
  external,
  plugins: [builtins()],
};'
yarn build
edit 'const rollupConfig = {
  external,
  plugins: [builtins()],
};' 'const rollupConfig = {
  external,
  plugins: [builtins()],
};

Bundles.setRollupConfig(rollupConfig);'
yarn build
open "scripts/rollup/bundles.js"
edit 'const rollupConfig = {
  external,
  plugins: [builtins()],
};

Bundles.setRollupConfig(rollupConfig);' '// No need to setRollupConfig; configurations are handled per bundle.'
open "scripts/rollup/build-all-release-channels.js"
edit 'Bundles.setRollupConfig(rollupConfig);' '// Apply rollupConfig to each bundle
for (const bundle of Bundles.bundles) {
  bundle.externals = [...(bundle.externals || []), ...rollupConfig.external];
  bundle.plugins = [...(bundle.plugins || []), ...rollupConfig.plugins];
}'
yarn build
edit '// Apply rollupConfig to each bundle
for (const bundle of Bundles.bundles) {
  bundle.externals = [...(bundle.externals || []), ...rollupConfig.external];
  bundle.plugins = [...(bundle.plugins || []), ...rollupConfig.plugins];
}' '// Apply rollupConfig to each bundle
const updatedBundles = Bundles.bundles.map(bundle => ({
  ...bundle,
  externals: [...(bundle.externals || []), ...rollupConfig.external],
  plugins: [...(bundle.plugins || []), ...rollupConfig.plugins],
}));
Bundles.bundles = updatedBundles;'
yarn build
find_file eslint-plugin-react-hooks/package.json
yarn test
