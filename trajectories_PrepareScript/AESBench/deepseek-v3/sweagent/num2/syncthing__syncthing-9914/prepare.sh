ls -la
ls -la .github/workflows
open ".github/workflows/build-syncthing.yaml"
open "build.go"
open "go.mod"
go version
wget https://dl.google.com/go/go1.22.0.linux-amd64.tar.gz -O /tmp/go1.22.0.linux-amd64.tar.gz
curl -L https://dl.google.com/go/go1.22.0.linux-amd64.tar.gz -o /tmp/go1.22.0.linux-amd64.tar.gz
apt-get update
apt-get install -y curl
curl -L https://dl.google.com/go/go1.22.0.linux-amd64.tar.gz -o /tmp/go1.22.0.linux-amd64.tar.gz
tar -C /usr/local -xzf /tmp/go1.22.0.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
go version
go run build.go
export GOPROXY=direct
go run build.go
ping -c 4 google.com
apt-get install -y iputils-ping
ping -c 4 google.com
env | grep -i proxy
mkdir -p /root/go/pkg/mod/golang.org/x && cd /root/go/pkg/mod/golang.org/x && git clone https://github.com/golang/net.git
open "go.mod"
cd /testbed
open "go.mod"
mkdir -p /root/go/pkg/mod/golang.org/x && cd /root/go/pkg/mod/golang.org/x && git clone https://github.com/golang/crypto.git
cd /root/go/pkg/mod/golang.org/x && git clone https://github.com/golang/sys.git
cd /root/go/pkg/mod/golang.org/x && git clone https://github.com/golang/text.git
cd /testbed && go run build.go
ls -la /root/go/pkg/mod/golang.org/x/net@v0.33.0
mkdir -p /root/go/pkg/mod/golang.org/x && cd /root/go/pkg/mod/golang.org/x && git clone https://github.com/golang/net.git
cd /root/go/pkg/mod/golang.org/x/net && git fetch --tags && git checkout v0.33.0
cd /root/go/pkg/mod/golang.org/x/sys && git fetch --tags && git checkout v0.28.0
cd /testbed && go run build.go
export GOPROXY=off
go run build.go
ls -la /root/go/pkg/mod/golang.org/x/net@v0.33.0
mkdir -p /root/go/pkg/mod/golang.org/x/net@v0.33.0 && cp -r /root/go/pkg/mod/golang.org/x/net/* /root/go/pkg/mod/golang.org/x/net@v0.33.0/
mkdir -p /root/go/pkg/mod/golang.org/x/sys@v0.28.0 && cp -r /root/go/pkg/mod/golang.org/x/sys/* /root/go/pkg/mod/golang.org/x/sys@v0.28.0/
go run build.go
mkdir -p /root/go/pkg/mod/github.com/shirou/gopsutil/v4@v4.24.12 && cd /root/go/pkg/mod/github.com/shirou && git clone https://github.com/shirou/gopsutil.git gopsutil@v4.24.12
cd /root/go/pkg/mod/github.com/shirou/gopsutil@v4.24.12 && git fetch --tags && git checkout v4.24.12
cd /testbed && go run build.go
ls -la /root/go/pkg/mod/golang.org/x/net@v0.33.0
ls -la /root/go/pkg/mod/golang.org/x/sys@v0.28.0
cd /testbed && go mod vendor
mkdir -p /root/go/pkg/mod/github.com/aws/aws-sdk-go@v1.55.5 && cd /root/go/pkg/mod/github.com/aws && git clone https://github.com/aws/aws-sdk-go.git aws-sdk-go@v1.55.5
cd /root/go/pkg/mod/github.com/aws/aws-sdk-go@v1.55.5 && git fetch --tags && git checkout v1.55.5
mkdir -p /root/go/pkg/mod/github.com/ccding/go-stun@v0.1.5 && cd /root/go/pkg/mod/github.com/ccding && git clone https://github.com/ccding/go-stun.git go-stun@v0.1.5

