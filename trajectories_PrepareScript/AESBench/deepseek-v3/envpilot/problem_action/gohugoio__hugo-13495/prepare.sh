ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
wget https://dl.google.com/go/go1.23.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.23.0.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
apt-get update && apt-get install -y wget
wget https://dl.google.com/go/go1.23.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.23.0.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
go version
apt-get update && apt-get install -y gcc pandoc mingw-w64 dart-sass ruby python3 asciidoctor python3-docutils staticcheck libc6-dev build-essential curl tar git ca-certificates
wget https://github.com/sass/dart-sass/releases/download/1.80.3/dart-sass-1.80.3-linux-x64.tar.gz && tar -xzf dart-sass-1.80.3-linux-x64.tar.gz && mv dart-sass-1.80.3-linux-x64 /usr/local/lib/dart-sass && ln -s /usr/local/lib/dart-sass/sass /usr/local/bin/sass
ls -la
tar -xzf dart-sass-1.80.3-linux-x64.tar.gz && ls -la dart-sass-1.80.3-linux-x64
tar -tzf dart-sass-1.80.3-linux-x64.tar.gz
tar -xzf dart-sass-1.80.3-linux-x64.tar.gz && mv dart-sass /usr/local/lib/dart-sass && ln -s /usr/local/lib/dart-sass/sass /usr/local/bin/sass
sass --version
go install honnef.co/go/tools/cmd/staticcheck@latest
staticcheck --version
ls -la $GOPATH/bin
go env GOPATH
ls -la /root/go/bin
export PATH=$PATH:/root/go/bin
staticcheck --version
go install github.com/magefile/mage@v1.15.0
mage --version
go mod download
mage test
go test -tags=go1.18 ./... -p 2
go test -tags=go1.18 ./... -p 2 -skip TestMethods
