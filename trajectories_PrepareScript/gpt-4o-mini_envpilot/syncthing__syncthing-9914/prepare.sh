
find_file '*.yml'
find_file '*.yaml'
open "/testbed/.github/workflows/build-infra-dockers.yaml"
open "/testbed/.github/workflows/trigger-nightly.yaml"
open "/testbed/.github/workflows/update-docs-translations.yaml"
open "/testbed/.github/workflows/build-syncthing.yaml"
open "/testbed/buf.yaml"
open "/testbed/go.mod"
insert 'export GOPATH=/root/go
export PATH=$PATH:/usr/local/go/bin:/root/go/bin' 0
apt-get update && apt-get install -y build-essential golang git ruby gem
go mod vendor
edit 'export GOPATH=/root/go
export PATH=$PATH:/usr/local/go/bin:/root/go/bin' '# export GOPATH=/root/go
# export PATH=$PATH:/usr/local/go/bin:/root/go/bin' True
go mod vendor
edit 'go 1.22.0' 'go 1.23.0'
go mod vendor
edit '# export GOPATH=/root/go
# export PATH=$PATH:/usr/local/go/bin:/root/go/bin' ''
go mod vendor
edit 'go 1.23.0' 'go 1.23'
go mod vendor
go test
go test ./...
go mod tidy
go test ./...
go get -u ./...
go test ./...
go mod tidy
go test ./...
go get -u ./...
go get -u github.com/syncthing/syncthing
go test ./...
go mod vendor
go get github.com/syncthing/syncthing
go mod tidy
go test ./...
go mod vendor
go get github.com/syncthing/syncthing
go mod tidy
go test ./...
go mod vendor
go get golang.org/x/crypto/bcrypt
go get golang.org/x/crypto/chacha20poly1305
go get golang.org/x/crypto/hkdf
go get golang.org/x/crypto/scrypt
go get github.com/stretchr/testify/mock
go test ./...
go mod vendor
go test ./...
go mod tidy

