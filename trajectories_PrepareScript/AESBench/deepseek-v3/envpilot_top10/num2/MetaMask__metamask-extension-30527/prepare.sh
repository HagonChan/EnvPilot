ls -la
ls -la .github/workflows
open ".github/workflows/run-tests.yml"
open "package.json"
node --version && yarn --version
curl -sL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
apt-get remove -y nodejs && curl -sL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
apt-get update && apt-get install -y curl
curl -sL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
node --version && yarn --version
npm install -g yarn
node --version && yarn --version
yarn install
corepack enable && corepack prepare yarn@4.5.1 --activate
yarn --version
yarn install
open "package.json"
edit '"@metamask/providers": "19.0.0"' '"@metamask/providers": "^19.0.0"' False
search_file '"@metamask/providers"' package.json
search_file '"@metamask/accounts-controller"' package.json
edit '"@metamask/providers": "patch:@metamask/providers@npm%3A19.0.0#~/.yarn/patches/@metamask-providers-npm-19.0.0-3d962c6f1a.patch"' '"@metamask/providers": "^23.0.1"' False
search_file '"@typescript-eslint/eslint-plugin"' package.json
edit '"@typescript-eslint/eslint-plugin": "^7.10.0"' '"@typescript-eslint/eslint-plugin": "^7.12.0"' False
edit '"@typescript-eslint/parser": "^7.10.0"' '"@typescript-eslint/parser": "^7.12.0"' False
yarn install
yarn info @metamask/providers
edit '"@metamask/providers": "^23.0.1"' '"@metamask/providers": "patch:@metamask/providers@npm%3A19.0.0#~/.yarn/patches/@metamask-providers-npm-19.0.0-3d962c6f1a.patch"' False
yarn install
search_file '"@metamask-institutional"' package.json
open "yarn.lock"
search_file '"@metamask-institutional"' yarn.lock
yarn config set registry https://registry.npmjs.org
cat .yarnrc.yml || echo 'npmRegistryServer: "https://registry.npmjs.org"' > .yarnrc.yml
edit 'compressionLevel: mixed' 'npmRegistryServer: "https://registry.npmjs.org"
compressionLevel: mixed' False
echo 'npmRegistryServer: "https://registry.npmjs.org"' >> .yarnrc.yml
yarn install
ls -la
open ".yarnrc.yml"
search_file '"@metamask-institutional"' package.json
search_file '"@metamask-institutional"' yarn.lock
grep -r "@metamask-institutional" .
edit 'npmRegistryServer: "https://registry.npmjs.org"' 'npmRegistryServer: "https://registry.npmjs.org"
npmScopes:
  metamask-institutional:
    npmRegistryServer: "https://private-registry.metamask.io"' False
yarn install
ls -la
edit '"@metamask-institutional/custody-controller": "^0.3.0",
    "@metamask-institutional/custody-keyring": "^2.1.1",
    "@metamask-institutional/extension": "^0.3.28",
    "@metamask-institutional/institutional-features": "^1.3.6",
    "@metamask-institutional/portfolio-dashboard": "^1.4.1",
    "@metamask-institutional/rpc-allowlist": "^1.0.3",
    "@metamask-institutional/sdk": "^0.2.0",
    "@metamask-institutional/transaction-update": "^0.2.6",
    "@metamask-institutional/types": "^1.2.0",' '' False
open "package.json"
edit 'npmScopes:
  metamask-institutional:
    npmRegistryServer: "https://private-registry.metamask.io"' '# npmScopes:
#   metamask-institutional:
#     npmRegistryServer: "https://private-registry.metamask.io"' False
open "package.json"
open "yarn.lock"

