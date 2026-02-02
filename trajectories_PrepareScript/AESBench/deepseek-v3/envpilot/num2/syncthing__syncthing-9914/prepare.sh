ls -la
ls -la .github/workflows
open ".github/workflows/build-syncthing.yaml"
apt-get update && apt-get install -y golang-1.23
go version
which golang-1.23-go
ls -la /usr/lib/go-1.23/bin
export PATH=$PATH:/usr/lib/go-1.23/bin
go version
go mod vendor
go mod vendor
go run build.go
go run build.go test
