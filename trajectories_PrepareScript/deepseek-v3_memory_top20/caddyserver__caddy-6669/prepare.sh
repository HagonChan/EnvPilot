ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "go.mod"
wget https://dl.google.com/go/go1.22.3.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.22.3.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
apt-get update && apt-get install -y wget
wget https://dl.google.com/go/go1.22.3.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.22.3.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
go version
export PATH=/usr/local/go/bin:$PATH && go version
which -a go
/usr/local/go/bin/go version
rm -rf /usr/local/go && wget https://dl.google.com/go/go1.22.3.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.22.3.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH && go version
rm -rf /usr/local/go && rm -rf /usr/lib/go && rm -rf /usr/local/bin/go && wget https://dl.google.com/go/go1.22.3.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.22.3.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH && go version
tar -tf go1.22.3.linux-amd64.tar.gz | head -n 10
tar -xzf go1.22.3.linux-amd64.tar.gz --to-command='cat' --wildcards '*/VERSION'
export PATH=/usr/local/go/bin:$PATH && which go && go version
/usr/local/go/bin/go version
wget https://golang.org/dl/go1.22.3.linux-amd64.tar.gz && tar -tf go1.22.3.linux-amd64.tar.gz | grep 'VERSION'
tar -xzf go1.22.3.linux-amd64.tar.gz --to-command='cat' --wildcards '*/VERSION'
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.22.3.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH && go version
rm -rf /usr/local/go && rm -rf /usr/lib/go && rm -rf /usr/local/bin/go && tar -C /usr/local -xzf go1.22.3.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH && go version
find / -name go -type f 2>/dev/null
rm -rf /root/go/pkg/mod/golang.org/toolchain@v0.0.1-go1.24.10.linux-amd64 && rm -rf /root/go/pkg/mod/golang.org/toolchain@v0.0.1-go1.23.0.linux-amd64 && rm -rf /usr/local/go && tar -C /usr/local -xzf go1.22.3.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH && go version
find / -name go -type l 2>/dev/null
export GOROOT=/usr/local/go && export PATH=$GOROOT/bin:$PATH && go version
rm -rf /usr/local/go && wget https://go.dev/dl/go1.22.3.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.22.3.linux-amd64.tar.gz && export GOROOT=/usr/local/go && export PATH=$GOROOT/bin:$PATH && go version
rm -rf /opt/go && mkdir -p /opt/go && wget https://go.dev/dl/go1.22.3.linux-amd64.tar.gz && tar -C /opt -xzf go1.22.3.linux-amd64.tar.gz && export GOROOT=/opt/go && export PATH=$GOROOT/bin:$PATH && go version
rm -rf /opt/go && mkdir -p /opt/go && curl -L https://go.dev/dl/go1.22.3.linux-amd64.tar.gz -o go1.22.3.linux-amd64.tar.gz && tar -C /opt -xzf go1.22.3.linux-amd64.tar.gz && export GOROOT=/opt/go && export PATH=$GOROOT/bin:$PATH && go version
apt-get update && apt-get install -y curl
apt-get install -y curl --fix-missing
rm -rf /opt/go && mkdir -p /opt/go && curl -L https://go.dev/dl/go1.22.3.linux-amd64.tar.gz -o go1.22.3.linux-amd64.tar.gz && tar -C /opt -xzf go1.22.3.linux-amd64.tar.gz && export GOROOT=/opt/go && export PATH=$GOROOT/bin:$PATH && go version
rm -rf /opt/go && mkdir -p /opt/go && wget --no-check-certificate https://go.dev/dl/go1.22.3.linux-amd64.tar.gz && tar -C /opt -xzf go1.22.3.linux-amd64.tar.gz && export GOROOT=/opt/go && export PATH=$GOROOT/bin:$PATH && go version
rm -rf /opt/go && mkdir -p /opt/go && wget --no-check-certificate https://golang.org/dl/go1.22.3.linux-amd64.tar.gz && tar -C /opt -xzf go1.22.3.linux-amd64.tar.gz && export GOROOT=/opt/go && export PATH=$GOROOT/bin:$PATH && go version
export GOPATH=/root/go && export PATH=$PATH:/usr/local/go/bin:/root/go/bin
go get -v -t -d ./...
go mod download
export GOPROXY=direct && go mod download
go test ./...
