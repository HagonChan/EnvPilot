find_file '*.yml' .github/workflows
open ".github/workflows/ci.yml"
goto 100
go get -v -t -d ./...
apt update
apt install -y golang
go get -v -t -d ./...
open "go.mod"
goto 1
edit 'go 1.22.3' 'go 1.18'
edit 'toolchain go1.23.0' ''
go get -v -t -d ./...
apt remove -y golang
wget https://golang.org/dl/go1.22.3.linux-amd64.tar.gz
curl -O https://golang.org/dl/go1.22.3.linux-amd64.tar.gz
apt install -y curl
curl -O https://golang.org/dl/go1.22.3.linux-amd64.tar.gz
tar -C /usr/local -xzf go1.22.3.linux-amd64.tar.gz
ls -lh
curl -LO https://golang.org/dl/go1.22.3.linux-amd64.tar.gz
tar -C /usr/local -xzf go1.22.3.linux-amd64.tar.gz
open "/root/.bashrc"
insert 'export PATH=$PATH:/usr/local/go/bin' 99

