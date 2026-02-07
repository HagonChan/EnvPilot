ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
scroll_down
go version
wget https://dl.google.com/go/go1.22.3.linux-amd64.tar.gz -O /tmp/go1.22.3.linux-amd64.tar.gz
curl -L https://dl.google.com/go/go1.22.3.linux-amd64.tar.gz -o /tmp/go1.22.3.linux-amd64.tar.gz
apt-get update && apt-get install -y curl
curl -L https://dl.google.com/go/go1.22.3.linux-amd64.tar.gz -o /tmp/go1.22.3.linux-amd64.tar.gz
tar -C /usr/local -xzf /tmp/go1.22.3.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
go version
/usr/local/go/bin/go version
go get -v -t -d ./...
go build ./cmd/caddy
go test -tags nobadger -v -coverprofile="cover-profile.out" -short -race ./...
