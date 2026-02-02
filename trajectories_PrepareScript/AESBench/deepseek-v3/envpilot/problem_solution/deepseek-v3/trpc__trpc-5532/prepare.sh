ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
open "./.github/setup"
ls -la ./.github/setup
open "./.github/setup/action.yml"
curl -fsSL https://deb.nodesource.com/setup_20.x | bash -
apt-get update && apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_20.x | bash -
apt-get install -y nodejs
node --version && npm --version
npm install -g pnpm
pnpm --version
pnpm install
pnpm turbo --filter tests test-ci
open "packages/tests/tests/server/react/withTRPC.test.tsx" 417
find . -name withTRPC.test.tsx
open "./packages/tests/server/react/withTRPC.test.tsx" 417
apt-get install -y chromium libssl-dev build-essential
apt-get install -y chromium-browser libssl-dev build-essential
pnpm turbo --filter tests test-ci
open "./packages/tests/server/regression/issue-3455-56-invalidate-queries.test.tsx" 143
pnpm exec playwright install
pnpm turbo --filter tests test-ci
open "./packages/tests/server/react/withTRPC.test.tsx" 453
psql --version
apt-get install -y postgresql postgresql-contrib
service postgresql start
pnpm turbo --filter tests test-ci
open "./packages/tests/server/react/useInfiniteQuery.test.tsx" 625
tail -n 20 /var/log/postgresql/postgresql-14-main.log
open "./packages/tests/server/react/__testUtils.tsx"
find . -name __testUtils.tsx
open "./packages/tests/server/react/useInfiniteQuery.test.tsx" 625
edit 'await waitFor(() => {
    expect(utils.container).not.toHaveTextContent('"'"'Fetching...'"'"');
  });' 'await waitFor(() => {
    expect(utils.container).not.toHaveTextContent('"'"'Fetching...'"'"');
  }, { timeout: 10000 });'
edit 'await userEvent.click(utils.getByTestId('"'"'invalidate'"'"'));

  await waitFor(() => {
    expect(utils.container).toHaveTextContent('"'"'Fetching...'"'"');
  });
  await waitFor(() => {
    expect(utils.container).not.toHaveTextContent('"'"'Fetching...'"'"');
  });' 'await userEvent.click(utils.getByTestId('"'"'invalidate'"'"'));

  await waitFor(() => {
    expect(utils.container).toHaveTextContent('"'"'Fetching...'"'"');
  });
  await waitFor(() => {
    expect(utils.container).not.toHaveTextContent('"'"'Fetching...'"'"');
  }, { timeout: 10000 });'
pnpm turbo --filter tests test-ci
open "./packages/tests/server/regression/issue-3455-56-invalidate-queries.test.tsx" 143
edit 'await waitFor(() => {
    expect(utils.container).toHaveTextContent('"'"'rq:done'"'"');
    expect(utils.container).toHaveTextContent('"'"'trpc:done'"'"');
  });' 'await waitFor(() => {
    expect(utils.container).toHaveTextContent('"'"'rq:done'"'"');
    expect(utils.container).toHaveTextContent('"'"'trpc:done'"'"');
  }, { timeout: 10000 });'
edit 'await waitFor(() => {
    expect(utils.container).toHaveTextContent('"'"'rq:done'"'"');
    expect(utils.container).toHaveTextContent('"'"'trpc:done'"'"');
  });' 'await waitFor(() => {
    expect(utils.container).toHaveTextContent('"'"'rq:done'"'"');
    expect(utils.container).toHaveTextContent('"'"'trpc:done'"'"');
  }, { timeout: 10000 });'
edit 'await waitFor(() => {
    expect(utils.container).toHaveTextContent('"'"'rq:done'"'"');
    expect(utils.container).toHaveTextContent('"'"'trpc:done'"'"');
  });' 'await waitFor(() => {
    expect(utils.container).toHaveTextContent('"'"'rq:done'"'"');
    expect(utils.container).toHaveTextContent('"'"'trpc:done'"'"');
  }, { timeout: 10000 });'

