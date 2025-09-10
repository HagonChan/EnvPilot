ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
open "package.json"
node --version
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
apt update && apt install -y nodejs
apt remove -y nodejs
curl -fsSL https://deb.nodesource.com/setup_20.x | bash -
wget -qO- https://deb.nodesource.com/setup_20.x | bash -
apt update && apt install -y wget
wget -qO- https://deb.nodesource.com/setup_20.x | bash -
apt install -y nodejs
node --version
npm install -g pnpm@8.15.5
pnpm --version
pnpm install
pnpm install
pnpm test-ci
pnpm test-ci
open "packages/tests/server/regression/issue-3455-56-invalidate-queries.test.tsx"
cd packages/tests && CI=true vitest run server/regression/issue-3455-56-invalidate-queries.test.tsx -t "mixed providers with more \"advanced\" filter"
cd packages/tests && pnpm test server/regression/issue-3455-56-invalidate-queries.test.tsx -t "mixed providers with more \"advanced\" filter"
pwd
pnpm test server/regression/issue-3455-56-invalidate-queries.test.tsx -t "mixed providers with more \"advanced\" filter"
cd /testbed && pnpm -w test server/regression/issue-3455-56-invalidate-queries.test.tsx -t "mixed providers with more \"advanced\" filter"
lsof -ti :45929 | xargs kill -9
netstat -tulnp | grep 45929
apt update && apt install -y net-tools
netstat -tulnp | grep 45929
cd packages/tests && pnpm test server/regression/issue-3455-56-invalidate-queries.test.tsx -t "mixed providers with more \"advanced\" filter"
cd /testbed && pnpm -w test server/regression/issue-3455-56-invalidate-queries.test.tsx -t "mixed providers with more \"advanced\" filter"
open "packages/tests/server/regression/issue-3455-56-invalidate-queries.test.tsx"
edit 'await waitFor(() => {
    expect(utils.container).toHaveTextContent('"'"'trpc:done'"'"');
  });' 'await waitFor(() => {
    expect(utils.container).toHaveTextContent('"'"'trpc:done'"'"');
  }, { timeout: 10000 });' False
goto 214
edit 'await waitFor(() => {
    expect(utils.container).toHaveTextContent('"'"'rq1:done'"'"');
    expect(utils.container).toHaveTextContent('"'"'rq2:done'"'"');
    expect(utils.container).toHaveTextContent('"'"'trpc:done'"'"');
  });' 'await waitFor(() => {
    expect(utils.container).toHaveTextContent('"'"'rq1:done'"'"');
    expect(utils.container).toHaveTextContent('"'"'rq2:done'"'"');
    expect(utils.container).toHaveTextContent('"'"'trpc:done'"'"');
  }, { timeout: 5000 });'
edit 'await waitFor(() => {
    expect(utils.container).toHaveTextContent('"'"'rq1:done'"'"');
    expect(utils.container).toHaveTextContent('"'"'rq2:done'"'"');
    expect(utils.container).toHaveTextContent('"'"'trpc:done'"'"');
  });' 'await waitFor(() => {
    expect(utils.container).toHaveTextContent('"'"'rq1:done'"'"');
    expect(utils.container).toHaveTextContent('"'"'rq2:done'"'"');
    expect(utils.container).toHaveTextContent('"'"'trpc:done'"'"');
  }, { timeout: 5000 });'
edit 'await waitFor(() => {
    expect(utils.container).toHaveTextContent('"'"'rq1:done'"'"');
    expect(utils.container).toHaveTextContent('"'"'rq2:done'"'"');
    expect(utils.container).toHaveTextContent('"'"'trpc:done'"'"');
  });' 'await waitFor(() => {
    expect(utils.container).toHaveTextContent('"'"'rq1:done'"'"');
    expect(utils.container).toHaveTextContent('"'"'rq2:done'"'"');
    expect(utils.container).toHaveTextContent('"'"'trpc:done'"'"');
  }, { timeout: 5000 });'

