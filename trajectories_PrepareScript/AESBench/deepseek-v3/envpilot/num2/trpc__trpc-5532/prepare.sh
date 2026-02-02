ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
open "./.github/setup"
ls -la ./.github/setup
open "./.github/setup/action.yml"
open ".nvmrc"
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
apt-get install -y curl
apt-get update
apt-get install -y curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
nvm install 20.10
node --version && npm --version
npm install -g pnpm
pnpm --version
pnpm install
pnpm exec playwright install
pnpm turbo --filter tests test-ci
open "packages/tests/server/regression/issue-3455-56-invalidate-queries.test.tsx"
pnpm turbo --filter tests test-ci
cd packages/tests && pnpm test server/regression/issue-3455-56-invalidate-queries.test.tsx
edit 'await waitFor(() => {
    expect(utils.container).toHaveTextContent('"'"'rq1:done'"'"');
    expect(utils.container).toHaveTextContent('"'"'rq2:done'"'"');
    expect(utils.container).toHaveTextContent('"'"'trpc:done'"'"');
  });' 'await waitFor(() => {
    expect(utils.container).toHaveTextContent('"'"'rq1:done'"'"');
    expect(utils.container).toHaveTextContent('"'"'rq2:done'"'"');
    expect(utils.container).toHaveTextContent('"'"'trpc:done'"'"');
  }, { timeout: 10000 });'
goto 211
edit 'await waitFor(() => {' 'await waitFor(() => {' False
edit 'await waitFor(() => {' 'await waitFor(() => {' False


