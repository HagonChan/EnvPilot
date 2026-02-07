ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
wget https://go.dev/dl/go1.22.0.linux-amd64.tar.gz && rm -rf /usr/local/go && tar -C /usr/local -xzf go1.22.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
apt-get update && apt-get install -y wget
wget https://go.dev/dl/go1.22.0.linux-amd64.tar.gz && rm -rf /usr/local/go && tar -C /usr/local -xzf go1.22.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
curl -L https://go.dev/dl/go1.22.0.linux-amd64.tar.gz -o go1.22.0.linux-amd64.tar.gz && rm -rf /usr/local/go && tar -C /usr/local -xzf go1.22.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
apt-get install -y curl
curl -L https://go.dev/dl/go1.22.0.linux-amd64.tar.gz -o go1.22.0.linux-amd64.tar.gz && rm -rf /usr/local/go && tar -C /usr/local -xzf go1.22.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
apt-get install -y golang
apt-get install -y build-essential ca-certificates curl gettext libexpat1-dev libssl-dev libz-dev openssl git
go version
apt-get install -y wget
curl -L https://go.dev/dl/go1.22.0.linux-amd64.tar.gz -o go1.22.0.linux-amd64.tar.gz && rm -rf /usr/local/go && tar -C /usr/local -xzf go1.22.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
ping -c 4 google.com
apt-get install -y iputils-ping
ping -c 4 google.com
env | grep -i proxy
curl -L https://dl.google.com/go/go1.22.0.linux-amd64.tar.gz -o go1.22.0.linux-amd64.tar.gz && rm -rf /usr/local/go && tar -C /usr/local -xzf go1.22.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
open "go.mod"
curl -L https://golang.org/dl/go1.22.0.linux-amd64.tar.gz -o go1.22.0.linux-amd64.tar.gz && rm -rf /usr/local/go && tar -C /usr/local -xzf go1.22.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
open "Makefile"
go version
make unit-test
curl -L https://mirrors.ustc.edu.cn/golang/go1.22.0.linux-amd64.tar.gz -o go1.22.0.linux-amd64.tar.gz && rm -rf /usr/local/go && tar -C /usr/local -xzf go1.22.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
open "go.mod"
curl -L https://mirrors.aliyun.com/golang/go1.22.0.linux-amd64.tar.gz -o go1.22.0.linux-amd64.tar.gz && rm -rf /usr/local/go && tar -C /usr/local -xzf go1.22.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
go version
export PATH=/usr/local/go/bin:$PATH && go version
go mod download
ls -la vendor
go test -mod=vendor -short ./...
