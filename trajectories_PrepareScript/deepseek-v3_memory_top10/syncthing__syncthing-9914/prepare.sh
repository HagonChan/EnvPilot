ls -la
ls -la .github/workflows
open ".github/workflows/build-syncthing.yaml"
open "README.md"
open "build.sh"
apt-get update && apt-get install -y gcc g++ make cmake libssl-dev libyaml-dev
apt-get install -y golang
gcc --version && g++ --version && make --version && cmake --version && go version
go run build.go
open "go.mod"
edit 'go 1.22.0' 'go 1.18' False
go run build.go
apt-get install -y golang-1.21
edit 'go 1.18' 'go 1.21' False
export PATH=/usr/lib/go-1.21/bin:$PATH
go version
go run build.go
apt-get install -y golang-1.22
export PATH=/usr/lib/go-1.22/bin:$PATH
go version
edit 'go 1.21' 'go 1.22' False
go run build.go
go mod tidy
go run build.go
go run build.go test
