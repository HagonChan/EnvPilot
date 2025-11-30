find_file '*.yml' .
open ".github/workflows/turborepo-test.yml"
search_file run .github/workflows/turborepo-test.yml
goto 160
open ".github/actions/setup-turborepo-environment/action.yml"
node -v
rustc -V
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
wget https://sh.rustup.rs -O rustup-init.sh && sh rustup-init.sh -y
apt-get update && apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
npm install -g turbo
node -v
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt-get remove -y nodejs libnode72
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
npm -v
npm install -g turbo
turbo run test --filter=turborepo-tests-integration --color --env-mode=strict --token=${{ secrets.TURBO_TOKEN }} --team=${{ vars.TURBO_TEAM }}
turbo run test --filter=turborepo-tests-integration --color --env-mode=strict
open ".github/actions/setup-turborepo-environment/action.yml"
apt-get install -y capnproto
turbo run test --filter=turborepo-tests-integration --color --env-mode=strict
find_file setup-node .github/actions
find_file package.json
open "packages/turbo/package.json"
ls -l packages/turbo/bin
echo $PATH
export PATH=$PATH:$(pwd)/packages/turbo/bin
turbo run test --filter=turborepo-tests-integration --color --env-mode=strict
open ".github/actions/setup-turborepo-environment/action.yml"
open "package.json"
npm install -g pnpm
pnpm run test:integration
find_file turborepo-tests-integration .
find_file turborepo-tests-integration packages
find_file '*turborepo-tests*' .
ls -l packages
open "packages/prysk"
ls -l packages/prysk
open "packages/prysk/package.json"
open "packages/prysk/index.mjs"
node packages/prysk/index.mjs
python3 -V
python3 -m venv .cram_env
apt-get install -y python3.10-venv
python3 -m venv .cram_env
source .cram_env/bin/activate && pip install -e .

