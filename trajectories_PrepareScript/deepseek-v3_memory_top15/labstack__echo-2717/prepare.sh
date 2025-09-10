ls -la
ls -la .github/workflows
open ".github/workflows/echo.yml"
open "go.mod"
wget https://golang.org/dl/go1.23.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.23.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
apt-get update && apt-get install -y wget
wget https://golang.org/dl/go1.23.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.23.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
wget https://golang.org/dl/go1.22.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.22.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
wget https://golang.org/dl/go1.21.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.21.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
wget https://golang.org/dl/ -O - | grep -o 'go[0-9.]*.linux-amd64.tar.gz' | head -1
wget https://golang.org/dl/go1.24.5.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.24.5.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
tar -C /usr/local -xzf go1.24.5.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
go version
go get ./...
go test -race ./...
CGO_ENABLED=1 go test -race ./...
apt-get install -y build-essential
CGO_ENABLED=1 go test -race ./...
rm -rf /usr/local/go && wget https://golang.org/dl/go1.18.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.18.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
go version
CGO_ENABLED=1 go test -race ./...
rm -rf /usr/local/go && wget https://golang.org/dl/go1.20.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.20.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
go version
CGO_ENABLED=1 go test -race ./...
rm -rf /usr/local/go && wget https://golang.org/dl/go1.21.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.21.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
rm -rf /usr/local/go && wget https://golang.org/dl/go1.20.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.20.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
go version
CGO_ENABLED=1 go test -race ./...
rm -rf /usr/local/go && wget https://golang.org/dl/go1.19.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.19.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
go version
CGO_ENABLED=1 go test -race ./...
rm -rf /usr/local/go && wget https://golang.org/dl/go1.20.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.20.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
wget --no-check-certificate https://golang.org/dl/go1.20.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.20.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
go version
CGO_ENABLED=1 go test -race ./...
rm -rf /usr/local/go && wget --no-check-certificate https://golang.org/dl/go1.21.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.21.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
rm -rf /usr/local/go && wget --no-check-certificate https://golang.org/dl/go1.20.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.20.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
go version
CGO_ENABLED=1 go test -race ./...
rm -rf /usr/local/go && wget --no-check-certificate https://golang.org/dl/go1.19.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.19.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
go version
CGO_ENABLED=1 go test -race ./...
rm -rf /usr/local/go && wget --no-check-certificate https://golang.org/dl/go1.20.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.20.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
go version
CGO_ENABLED=1 go test -race ./...
rm -rf /usr/local/go && wget --no-check-certificate https://golang.org/dl/go1.21.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.21.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
rm -rf /usr/local/go && wget --no-check-certificate https://golang.org/dl/go1.20.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.20.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
go version
CGO_ENABLED=1 go test -race ./...

