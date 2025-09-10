ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
open "magefile.go"
wget https://go.dev/dl/go1.24.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.24.0.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
apt-get update && apt-get install -y wget
which wget
apt-get install -y curl
curl -OL https://go.dev/dl/go1.24.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.24.0.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
go version
go install github.com/magefile/mage@v1.15.0
apt-get install -y pandoc dart-sass
apt-get install -y pandoc
curl -OL https://github.com/sass/dart-sass/releases/download/1.69.5/dart-sass-1.69.5-linux-x64.tar.gz && tar -xzf dart-sass-1.69.5-linux-x64.tar.gz && mv dart-sass /usr/local/bin/
go version && mage --version && pandoc --version && sass --version
export PATH=$PATH:$(go env GOPATH)/bin && mage --version && pandoc --version && sass --version
export PATH=$PATH:/usr/local/bin/dart-sass && sass --version
mage -l
mage test
