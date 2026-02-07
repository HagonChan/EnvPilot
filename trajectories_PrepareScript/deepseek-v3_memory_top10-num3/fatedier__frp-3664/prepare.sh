ls -la
open "go.mod"
ls -la .github/workflows
open ".github/workflows/build-and-push-image.yml"
open ".github/workflows/golangci-lint.yml"
wget https://golang.org/dl/go1.21.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.21.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
curl -OL https://golang.org/dl/go1.21.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.21.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
apt-get update && apt-get install -y curl
curl -OL https://golang.org/dl/go1.21.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.21.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
go version
go get ./...
go test -race ./...
CGO_ENABLED=1 go test -race ./...
apt-get install -y gcc
CGO_ENABLED=1 go test -race ./...
go build ./...
CGO_ENABLED=1 go test -race ./...
mkdir -p ../../bin && go build -o ../../bin/frpc github.com/fatedier/frp/cmd/frpc
CGO_ENABLED=1 go test -race ./...
open "pkg/util/vhost/https_test.go"
edit 'var conn net.Conn
go func() {
		conn, _ = l.Accept()
		require.NotNil(conn)
	}()

go func() {
		time.Sleep(100 * time.Millisecond)
		tls.Dial("tcp", l.Addr().String(), &tls.Config{
			InsecureSkipVerify: true,
			ServerName:         "example.com",
		})
	}()' 'connChan := make(chan net.Conn)
go func() {
		conn, err := l.Accept()
		require.NoError(err)
		connChan <- conn
	}()

go func() {
		time.Sleep(100 * time.Millisecond)
		tls.Dial("tcp", l.Addr().String(), &tls.Config{
			InsecureSkipVerify: true,
			ServerName:         "example.com",
		})
	}()

conn := <-connChan'
open "pkg/util/vhost/https_test.go"
edit 'var conn net.Conn
go func() {
		conn, _ = l.Accept()
		require.NotNil(conn)
	}()

go func() {
		time.Sleep(100 * time.Millisecond)
		tls.Dial("tcp", l.Addr().String(), &tls.Config{
			InsecureSkipVerify: true,
			ServerName:         "example.com",
		})
	}()' 'connChan := make(chan net.Conn)
go func() {
		conn, err := l.Accept()
		require.NoError(err)
		connChan <- conn
	}()

go func() {
		time.Sleep(100 * time.Millisecond)
		tls.Dial("tcp", l.Addr().String(), &tls.Config{
			InsecureSkipVerify: true,
			ServerName:         "example.com",
		})
	}()

conn := <-connChan'
edit 'var conn net.Conn
go func() {
		conn, _ = l.Accept()
		require.NotNil(conn)
	}()

go func() {
		time.Sleep(100 * time.Millisecond)
		tls.Dial("tcp", l.Addr().String(), &tls.Config{
			InsecureSkipVerify: true,
			ServerName:         "example.com",
		})
	}()' 'connChan := make(chan net.Conn)
go func() {
		conn, err := l.Accept()
		require.NoError(err)
		connChan <- conn
	}()

go func() {
		time.Sleep(100 * time.Millisecond)
		tls.Dial("tcp", l.Addr().String(), &tls.Config{
			InsecureSkipVerify: true,
			ServerName:         "example.com",
		})
	}()

conn := <-connChan'
edit 'var conn net.Conn
go func() {
		conn, _ = l.Accept()
		require.NotNil(conn)
	}()

	go func() {
		time.Sleep(100 * time.Millisecond)
		tls.Dial("tcp", l.Addr().String(), &tls.Config{
			InsecureSkipVerify: true,
			ServerName:         "example.com",
		})
	}()' 'connChan := make(chan net.Conn)
	go func() {
		conn, err := l.Accept()
		require.NoError(err)
		connChan <- conn
	}()

	go func() {
		time.Sleep(100 * time.Millisecond)
		tls.Dial("tcp", l.Addr().String(), &tls.Config{
			InsecureSkipVerify: true,
			ServerName:         "example.com",
		})
	}()

	conn := <-connChan' False

