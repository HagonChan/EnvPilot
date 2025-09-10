ls -la
open "go.mod"
open ".github/workflows"
ls -la .github/workflows
open ".github/workflows/echo.yml"
open "Makefile"
wget https://go.dev/dl/go1.20.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.20.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
apt-get update && apt-get install -y wget
wget https://go.dev/dl/go1.20.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.20.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
go version
go get ./...
make test
apt-get install -y make
make test
open "echo_test.go"
search_file TestEchoStaticRedirectIndex echo_test.go
goto 222
ls -la _fixture
open "_fixture/index.html"
go test -v -run TestEchoStaticRedirectIndex
go run main.go
find_file main.go
open "echo_test.go"
goto 222
ls -la _fixture
search_file waitForServerStart echo_test.go
goto 896
edit 'ctx, cancel := stdContext.WithTimeout(stdContext.Background(), 200*time.Millisecond)' 'ctx, cancel := stdContext.WithTimeout(stdContext.Background(), 1*time.Second)' True
edit 'ticker := time.NewTicker(5 * time.Millisecond)' 'ticker := time.NewTicker(10 * time.Millisecond)' True
go test -v -run TestEchoStaticRedirectIndex
goto 222
create static_test.go
insert 'package main

import (
	"net/http"
	"testing"
	"github.com/labstack/echo/v4"
)

func TestStaticFileServing(t *testing.T) {
	e := echo.New()
	e.Static("/static", "_fixture")

	errCh := make(chan error)

	go func() {
		errCh <- e.Start(":0")
	}()

	addr := e.ListenerAddr().String()
	resp, err := http.Get("http://" + addr + "/static")
	if err != nil {
		t.Fatal(err)
	}
	defer resp.Body.Close()

	if resp.StatusCode != http.StatusOK {
		t.Fatalf("expected status 200, got %d", resp.StatusCode)
	}

	body, err := io.ReadAll(resp.Body)
	if err != nil {
		t.Fatal(err)
	}

	if !strings.HasPrefix(string(body), "<!doctype html>") {
		t.Fatal("unexpected response body")
	}

	if err := e.Close(); err != nil {
		t.Fatal(err)
	}
}'
go test -v static_test.go
edit 'package main' 'package echo' True
go test -v static_test.go
edit 'import (
	"net/http"
	"testing"
	"github.com/labstack/echo/v4"
)' 'import (
	"io"
	"net/http"
	"strings"
	"testing"
	"github.com/labstack/echo/v4"
)' True
go test -v static_test.go
edit 'addr := e.ListenerAddr().String()
	resp, err := http.Get("http://" + addr + "/static")' '// Wait for the server to start
	select {
	case err := <-errCh:
		t.Fatal(err)
	case <-time.After(1 * time.Second):
	}

	addr := e.ListenerAddr().String()
	resp, err := http.Get("http://" + addr + "/static")' True
edit 'import (
	"io"
	"net/http"
	"strings"
	"testing"
	"github.com/labstack/echo/v4"
)' 'import (
	"io"
	"net/http"
	"strings"
	"testing"
	"time"
	"github.com/labstack/echo/v4"
)' True
go test -v static_test.go
ls -la _fixture
edit 'if resp.StatusCode != http.StatusOK {
		t.Fatalf("expected status 200, got %d", resp.StatusCode)
	}' 'if resp.StatusCode != http.StatusOK {
		body, _ := io.ReadAll(resp.Body)
		t.Fatalf("expected status 200, got %d, body: %s", resp.StatusCode, body)
	}' True
go test -v static_test.go
edit 'e.Static("/static", "_fixture")' 'e.Static("/static", "./_fixture")' True
go test -v static_test.go
edit 'resp, err := http.Get("http://" + addr + "/static")' 't.Logf("Server address: %s", addr)
	resp, err := http.Get("http://" + addr + "/static")' True
go test -v static_test.go
create static_server.go

