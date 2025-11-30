
ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/build-test.yml"
ls -la .github/actions
ls -la .github/actions/install-dependencies
open ".github/actions/install-dependencies/action.yml"
curl -fsSL https://get.pnpm.io/install.sh | sh -
apt-get update && apt-get install -y curl
curl -fsSL https://get.pnpm.io/install.sh | sh -
export SHELL=/bin/bash && curl -fsSL https://get.pnpm.io/install.sh | sh -

