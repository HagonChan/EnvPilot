ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
ls -la ./.github/setup
open "./.github/setup/action.yml"
open "package.json"
npm install -g pnpm@8.15.5
apt-get update && apt-get install -y nodejs npm
npm install -g pnpm@8.15.5
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode-dev && curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
node --version && npm --version
pnpm --version
pnpm install
pnpm test-ci
pnpm test-ci
node --version && npm --version && pnpm --version
cat README.md
open "packages/tests/server/regression/issue-3455-56-invalidate-queries.test.tsx"
pnpm -F tests test server/regression/issue-3455-56-invalidate-queries.test.tsx
pnpm test-ci
edit 'await waitFor(() => {
    expect(utils.container).toHaveTextContent('"'"'posts:done'"'"');
    expect(utils.container).toHaveTextContent('"'"'greeting:done'"'"');
  });' 'await waitFor(() => {
    expect(utils.container).toHaveTextContent('"'"'posts:done'"'"');
    expect(utils.container).toHaveTextContent('"'"'greeting:done'"'"');
  }, { timeout: 10000 });'
edit 'await waitFor(() => {
    expect(utils.container).toHaveTextContent('"'"'rq:done'"'"');
    expect(utils.container).toHaveTextContent('"'"'trpc:done'"'"');
  });' 'await waitFor(() => {
    expect(utils.container).toHaveTextContent('"'"'rq:done'"'"');
    expect(utils.container).toHaveTextContent('"'"'trpc:done'"'"');
  }, { timeout: 10000 });'

pnpm test-ci
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
edit 'await waitFor(() => {
    expect(utils.container).toHaveTextContent('"'"'rq1:done'"'"');
    expect(utils.container).toHaveTextContent('"'"'rq2:done'"'"');
    expect(utils.container).toHaveTextContent('"'"'trpc:done'"'"');
  });' 'await waitFor(() => {
    expect(utils.container).toHaveTextContent('"'"'rq1:done'"'"');
    expect(utils.container).toHaveTextContent('"'"'rq2:done'"'"');
    expect(utils.container).toHaveTextContent('"'"'trpc:done'"'"');
  }, { timeout: 10000 });'
edit 'await waitFor(() => {
    expect(utils.container).toHaveTextContent('"'"'rq1:done'"'"');
    expect(utils.container).toHaveTextContent('"'"'rq2:done'"'"');
    expect(utils.container).toHaveTextContent('"'"'trpc:done'"'"');
  });' 'await waitFor(() => {
    expect(utils.container).toHaveTextContent('"'"'rq1:done'"'"');
    expect(utils.container).toHaveTextContent('"'"'rq2:done'"'"');
    expect(utils.container).toHaveTextContent('"'"'trpc:done'"'"');
  }, { timeout: 10000 });'
edit '  await waitFor(() => {
    expect(utils.container).toHaveTextContent('"'"'rq1:done'"'"');
    expect(utils.container).toHaveTextContent('"'"'rq2:done'"'"');
    expect(utils.container).toHaveTextContent('"'"'trpc:done'"'"');
  });' '  await waitFor(() => {
    expect(utils.container).toHaveTextContent('"'"'rq1:done'"'"');
    expect(utils.container).toHaveTextContent('"'"'rq2:done'"'"');
    expect(utils.container).toHaveTextContent('"'"'trpc:done'"'"');
  }, { timeout: 10000 });'

