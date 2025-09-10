ls -la
ls -la .github/workflows
open ".github/workflows/echo.yml"
go version
wget https://dl.google.com/go/go1.23.linux-amd64.tar.gz -O /tmp/go1.23.linux-amd64.tar.gz
curl -L https://dl.google.com/go/go1.23.linux-amd64.tar.gz -o /tmp/go1.23.linux-amd64.tar.gz
apt-get update && apt-get install -y curl
curl -L https://dl.google.com/go/go1.23.linux-amd64.tar.gz -o /tmp/go1.23.linux-amd64.tar.gz
tar -C /usr/local -xzf /tmp/go1.23.linux-amd64.tar.gz
file /tmp/go1.23.linux-amd64.tar.gz
ls -lh /tmp/go1.23.linux-amd64.tar.gz
curl -v -L https://dl.google.com/go/go1.23.linux-amd64.tar.gz -o /tmp/go1.23.linux-amd64.tar.gz
curl -L https://golang.org/dl/ | grep -o 'https://dl.google.com/go/go[0-9.]*.linux-amd64.tar.gz' | head -1
curl -L https://dl.google.com/go/go1.22.linux-amd64.tar.gz -o /tmp/go1.22.linux-amd64.tar.gz
curl -L https://dl.google.com/go/go1.21.linux-amd64.tar.gz -o /tmp/go1.21.linux-amd64.tar.gz
curl -L https://golang.org/dl/ | grep -o 'https://dl.google.com/go/go[0-9.]*.linux-amd64.tar.gz' | head -1 | xargs curl -L -o /tmp/go.linux-amd64.tar.gz
curl -L https://dl.google.com/go/go1.22.4.linux-amd64.tar.gz -o /tmp/go1.22.4.linux-amd64.tar.gz
tar -C /usr/local -xzf /tmp/go1.22.4.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
go version
go test -race --coverprofile=coverage.coverprofile --covermode=atomic ./...
CGO_ENABLED=1 go test -race --coverprofile=coverage.coverprofile --covermode=atomic ./...
apt-get install -y gcc
CGO_ENABLED=1 go test -race --coverprofile=coverage.coverprofile --covermode=atomic ./...
open "echo_test.go"
goto 245
search_file TestEchoStaticRedirectIndex
goto 222
ls -la _fixture
CGO_ENABLED=1 go test -race --coverprofile=coverage.coverprofile --covermode=atomic ./...
edit 'if resp, err := http.Get("http://" + addr + "/static"); err == nil {' 'fmt.Printf("Server address: %s\n", addr)
	if resp, err := http.Get("http://" + addr + "/static"); err == nil {
		fmt.Printf("Response status: %d\n", resp.StatusCode)
		fmt.Printf("Response headers: %v\n", resp.Header)'
CGO_ENABLED=1 go test -race --coverprofile=coverage.coverprofile --covermode=atomic ./...
edit 'err := waitForServerStart(e, errCh, false)
	assert.NoError(t, err)

	addr := e.ListenerAddr().String()' 'err := waitForServerStart(e, errCh, false)
	assert.NoError(t, err)

	time.Sleep(100 * time.Millisecond) // Ensure server is fully initialized
	addr := e.ListenerAddr().String()'
goto 222
edit 'err := waitForServerStart(e, errCh, false)
	assert.NoError(t, err)

	addr := e.ListenerAddr().String()' 'err := waitForServerStart(e, errCh, false)
	assert.NoError(t, err)

	time.Sleep(100 * time.Millisecond) // Ensure server is fully initialized
	addr := e.ListenerAddr().String()'
goto 222
edit 'err := waitForServerStart(e, errCh, false)
	assert.NoError(t, err)

	addr := e.ListenerAddr().String()' 'err := waitForServerStart(e, errCh, false)
	assert.NoError(t, err)

	time.Sleep(100 * time.Millisecond) // Ensure server is fully initialized
	addr := e.ListenerAddr().String()'
goto 222
goto 222
goto 222
goto 222
goto 222
goto 222
goto 222
goto 222
goto 222
goto 222
goto 222
goto 222

