ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
open ".github/setup/action.yml"
open "package.json"
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
node --version
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
apt-get update && apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
node --version && npm --version
npm install -g pnpm@8.15.5
pnpm --version
pnpm install
pnpm test-ci
open "packages/tests/server/regression/issue-3455-56-invalidate-queries.test.tsx"
edit 'await waitFor(() => {
    expect(utils.container).toHaveTextContent('"'"'posts:done'"'"');
    expect(utils.container).toHaveTextContent('"'"'greeting:done'"'"');
  });' 'await waitFor(() => {
    expect(utils.container).toHaveTextContent('"'"'posts:done'"'"');
    expect(utils.container).toHaveTextContent('"'"'greeting:done'"'"');
  }, { timeout: 5000 });'
edit 'await waitFor(() => {
    expect(utils.container).toHaveTextContent('"'"'posts:done'"'"');
    expect(utils.container).toHaveTextContent('"'"'greeting:done'"'"');
  });' 'await waitFor(() => {
    expect(utils.container).toHaveTextContent('"'"'posts:done'"'"');
    expect(utils.container).toHaveTextContent('"'"'greeting:done'"'"');
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
goto 211
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
  });

  await userEvent.click(utils.getByTestId('"'"'invalidate'"'"'));' 'await waitFor(() => {
    expect(utils.container).toHaveTextContent('"'"'rq1:done'"'"');
    expect(utils.container).toHaveTextContent('"'"'rq2:done'"'"');
    expect(utils.container).toHaveTextContent('"'"'trpc:done'"'"');
  }, { timeout: 5000 });

  await userEvent.click(utils.getByTestId('"'"'invalidate'"'"'));'
edit 'await waitFor(() => {
    expect(utils.container).toHaveTextContent('"'"'rq1:done'"'"');
    expect(utils.container).toHaveTextContent('"'"'rq2:done'"'"');
    expect(utils.container).toHaveTextContent('"'"'trpc:done'"'"');
  });' 'await waitFor(() => {
    expect(utils.container).toHaveTextContent('"'"'rq1:done'"'"');
    expect(utils.container).toHaveTextContent('"'"'rq2:done'"'"');
    expect(utils.container).toHaveTextContent('"'"'trpc:done'"'"');
  }, { timeout: 5000 });'
pnpm test-ci
open "packages/tests/server/websockets.test.ts"
goto 301
edit 'await waitFor(() => {
    expect(ee.listenerCount('"'"'server:msg'"'"')).toBe(0);
    expect(ee.listenerCount('"'"'server:error'"'"')).toBe(0);
  });' 'await waitFor(() => {
    expect(ee.listenerCount('"'"'server:msg'"'"')).toBe(0);
    expect(ee.listenerCount('"'"'server:error'"'"')).toBe(0);
  }, { timeout: 5000 });'
open "packages/tests/server/react/errors.test.tsx"
edit 'await waitFor(() => {
      expect(queryErrorCallback).toHaveBeenCalled();
    });' 'await waitFor(() => {
      expect(queryErrorCallback).toHaveBeenCalled();
    }, { timeout: 5000 });'
pnpm test-ci
open "packages/tests/server/adapters/fastify.test.ts"
goto 402
edit 'await waitFor(() => {
      expect(onStartedMock).toHaveBeenCalledTimes(1);
      expect(onDataMock).toHaveBeenCalledTimes(2);
    });' 'await waitFor(() => {
      expect(onStartedMock).toHaveBeenCalledTimes(1);
      expect(onDataMock).toHaveBeenCalledTimes(2);
    }, { timeout: 5000 });'
edit 'await waitFor(() => {
      expect(onDataMock).toHaveBeenCalledTimes(3);
    });' 'await waitFor(() => {
      expect(onDataMock).toHaveBeenCalledTimes(3);
    }, { timeout: 5000 });'
pnpm test-ci
open "packages/tests/server/react/useUtils.test.tsx"
edit 'const addPostButton = await utils.findByTestId('"'"'add-post'"'"');' 'const addPostButton = await utils.findByTestId('"'"'add-post'"'"', {}, { timeout: 5000 });'
edit 'await waitFor(() => {
    expect(utils.container).toHaveTextContent('"'"'reset'"'"');
  });' 'await waitFor(() => {
    expect(utils.container).toHaveTextContent('"'"'reset'"'"');
  }, { timeout: 5000 });'
pnpm test-ci
open "packages/tests/server/react/useInfiniteQuery.test.tsx"
goto 602
edit 'await waitFor(() => {
    expect(posts).toHaveTextContent('"'"'first post'"'"');
  });' 'await waitFor(() => {
    expect(posts).toHaveTextContent('"'"'first post'"'"');
  }, { timeout: 5000 });'
edit 'await waitFor(() => {
    expect(utils.container).toHaveTextContent('"'"'Fetching...'"'"');
  });' 'await waitFor(() => {
    expect(utils.container).toHaveTextContent('"'"'Fetching...'"'"');
  }, { timeout: 5000 });'
edit 'await waitFor(() => {
    expect(utils.container).toHaveTextContent('"'"'Fetching...'"'"');
  });
  await waitFor(() => {
    expect(utils.container).not.toHaveTextContent('"'"'Fetching...'"'"');
  });' 'await waitFor(() => {
    expect(utils.container).toHaveTextContent('"'"'Fetching...'"'"');
  }, { timeout: 5000 });
  await waitFor(() => {
    expect(utils.container).not.toHaveTextContent('"'"'Fetching...'"'"');
  }, { timeout: 5000 });'
edit 'await userEvent.click(utils.getByTestId('"'"'next'"'"'));
  await waitFor(() => {
    expect(utils.container).toHaveTextContent('"'"'Fetching...'"'"');
  });
  await waitFor(() => {
    expect(utils.container).not.toHaveTextContent('"'"'Fetching...'"'"');
  });' 'await userEvent.click(utils.getByTestId('"'"'next'"'"'));
  await waitFor(() => {
    expect(utils.container).toHaveTextContent('"'"'Fetching...'"'"');
  }, { timeout: 5000 });
  await waitFor(() => {
    expect(utils.container).not.toHaveTextContent('"'"'Fetching...'"'"');
  }, { timeout: 5000 });'
edit 'await userEvent.click(utils.getByTestId('"'"'invalidate'"'"'));

  await waitFor(() => {
    expect(utils.container).toHaveTextContent('"'"'Fetching...'"'"');
  });
  await waitFor(() => {
    expect(utils.container).not.toHaveTextContent('"'"'Fetching...'"'"');
  });' 'await userEvent.click(utils.getByTestId('"'"'invalidate'"'"'));

  await waitFor(() => {
    expect(utils.container).toHaveTextContent('"'"'Fetching...'"'"');
  }, { timeout: 5000 });
  await waitFor(() => {
    expect(utils.container).not.toHaveTextContent('"'"'Fetching...'"'"');
  }, { timeout: 5000 });'
pnpm test-ci
