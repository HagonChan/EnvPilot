ls -la
open "package.json"
ls -la .github/workflows
open ".github/workflows/build-test.yml"
open ".github/actions/install-dependencies/action.yml"
curl -fsSL https://get.pnpm.io/install.sh | sh -
apt-get update && apt-get install -y curl
curl -fsSL https://get.pnpm.io/install.sh | sh -
export SHELL=/bin/bash && curl -fsSL https://get.pnpm.io/install.sh | sh -

