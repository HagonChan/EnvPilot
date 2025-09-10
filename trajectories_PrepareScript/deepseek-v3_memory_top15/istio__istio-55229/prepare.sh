ls -la
ls -la .github/workflows
ls -la .github
open "Makefile"
open "Makefile.core.mk"
open "go.mod"
open "README.md"
ls -la VERSION
open "VERSION"
apt-get update && apt-get install -y gcc make libssl-dev golang
wget https://golang.org/dl/go1.21.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.21.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
apt-get install -y wget
wget https://golang.org/dl/go1.21.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.21.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
go version
export PATH=/usr/local/go/bin:$PATH && go version
open "go.mod"
edit 'go 1.23.0' 'go 1.21.0'
go version
go mod download
wget https://golang.org/dl/go1.21.1.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.21.1.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
go version
go mod download
wget https://golang.org/dl/go1.22.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.22.0.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
go version
go mod download
open "go.mod"
edit 'go 1.21.0' 'go 1.22.0'
go mod download
go list -m -versions github.com/containernetworking/plugins
edit 'go 1.22.0' 'go 1.21.0'
go build ./...
go list -m -versions k8s.io/client-go
edit 'k8s.io/client-go v0.32.1' 'k8s.io/client-go v0.29.0'
goto 102
edit 'k8s.io/client-go v0.32.1' 'k8s.io/client-go v0.29.0'
go mod download
go list -m -versions github.com/containernetworking/plugins
search_file github.com/containernetworking/plugins
edit 'github.com/containernetworking/plugins v1.6.2' 'github.com/containernetworking/plugins v1.6.1'
goto 18
edit 'github.com/containernetworking/plugins v1.6.2' 'github.com/containernetworking/plugins v1.6.1'
go mod download
go build ./...
go mod tidy
go build ./...
go test ./...
go test -v istio.io/istio/cni/pkg/iptables
find_file iptables_test.go istio.io/istio/cni/pkg/iptables
find_file iptables_test.go

