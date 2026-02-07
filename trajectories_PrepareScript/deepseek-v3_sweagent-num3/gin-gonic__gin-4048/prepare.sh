ls -a
ls -a .github/workflows
open ".github/workflows/gin.yml"
open "Makefile"
go version
apt-get update && apt-get install -y golang-1.22
/usr/lib/go-1.22/bin/go version
export GOPATH=$HOME/go && export PATH=$PATH:/usr/lib/go-1.22/bin && mkdir -p $GOPATH
/usr/lib/go-1.22/bin/go mod download
export GOPROXY=direct && /usr/lib/go-1.22/bin/go mod download
mkdir -p $GOPATH/src/github.com/bytedance && git clone https://github.com/bytedance/sonic.git $GOPATH/src/github.com/bytedance/sonic
open "go.mod"
mkdir -p $GOPATH/src/github.com/gin-contrib && git clone https://github.com/gin-contrib/sse.git $GOPATH/src/github.com/gin-contrib/sse
mkdir -p $GOPATH/src/github.com/go-playground && git clone https://github.com/go-playground/validator.git $GOPATH/src/github.com/go-playground/validator
mkdir -p $GOPATH/src/github.com/goccy && git clone https://github.com/goccy/go-json.git $GOPATH/src/github.com/goccy/go-json
mkdir -p $GOPATH/src/github.com/json-iterator && git clone https://github.com/json-iterator/go.git $GOPATH/src/github.com/json-iterator/go
mkdir -p $GOPATH/src/github.com/mattn && git clone https://github.com/mattn/go-isatty.git $GOPATH/src/github.com/mattn/go-isatty
mkdir -p $GOPATH/src/github.com/modern-go && git clone https://github.com/modern-go/reflect2.git $GOPATH/src/github.com/modern-go/reflect2
/usr/lib/go-1.22/bin/go mod tidy
mkdir -p $GOPATH/src/golang.org/x && git clone https://github.com/golang/arch.git $GOPATH/src/golang.org/x/arch
GIT_CURL_VERBOSE=1 git -c http.version=HTTP/1.1 clone https://github.com/golang/arch.git $GOPATH/src/golang.org/x/arch
open "go.mod"
edit 'golang.org/x/arch v0.0.0-20210923205945-b76863e36670 // indirect' '// golang.org/x/arch v0.0.0-20210923205945-b76863e36670 // indirect'
/usr/lib/go-1.22/bin/go mod tidy
make test
apt-get install -y make
make test
mkdir -p $GOPATH/src/golang.org/x && git clone https://github.com/golang/net.git $GOPATH/src/golang.org/x/net
open "go.mod"
edit 'golang.org/x/net v0.27.0' '// golang.org/x/net v0.27.0'
edit 'google.golang.org/protobuf v1.34.1' '// google.golang.org/protobuf v1.34.1'
edit 'golang.org/x/crypto v0.25.0 // indirect' '// golang.org/x/crypto v0.25.0 // indirect'
edit 'golang.org/x/exp v0.0.0-20221205204356-47842c84f3db // indirect' '// golang.org/x/exp v0.0.0-20221205204356-47842c84f3db // indirect'
edit 'golang.org/x/sys v0.22.0 // indirect' '// golang.org/x/sys v0.22.0 // indirect'
edit 'golang.org/x/text v0.16.0 // indirect' '// golang.org/x/text v0.16.0 // indirect'
/usr/lib/go-1.22/bin/go mod tidy
/usr/lib/go-1.22/bin/go test ./...
mkdir -p $GOPATH/src/golang.org/x && git clone https://github.com/golang/mod.git $GOPATH/src/golang.org/x/mod
