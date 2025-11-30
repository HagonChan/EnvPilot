
find_file '*.yml'
open "/testbed/.github/workflows/gin.yml"
find_file Makefile
open "/testbed/Makefile"
go version
wget https://golang.org/dl/go1.22.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.22.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin && rm go1.22.linux-amd64.tar.gz
curl -LO https://golang.org/dl/go1.22.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.22.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin && rm go1.22.linux-amd64.tar.gz
apt update && apt search golang
apt install golang-go
which go
search_file test /testbed/Makefile
apt install golang-go -y
make test
apt install build-essential -y
make test
find_file go.mod
open "/testbed/go.mod"
edit 'go 1.21.0' 'go 1.21'
make test
edit 'go 1.21' 'go 1.22'
make test
apt remove --purge golang-go -y
curl -LO https://golang.org/dl/go1.22.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.22.linux-amd64.tar.gz && rm go1.22.linux-amd64.tar.gz
apt install curl -y
curl -LO https://golang.org/dl/go1.22.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.22.linux-amd64.tar.gz && rm go1.22.linux-amd64.tar.gz
curl -LO https://golang.org/dl/go1.22.linux-amd64.tar.gz
apt update && apt search golang
apt upgrade -y
apt search golang
make test

