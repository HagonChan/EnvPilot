ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
open "go.mod"
wget https://go.dev/dl/go1.19.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.19.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
apt-get update && apt-get install -y wget
wget https://go.dev/dl/go1.19.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.19.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
go version
go mod download
./tests/tests_all.sh
wget https://go.dev/dl/go1.21.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.21.0.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
go version
./tests/tests_all.sh
wget https://go.dev/dl/go1.23.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.23.0.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
go version
./tests/tests_all.sh
apt-get install -y docker-compose
./tests/tests_all.sh
service docker start
systemctl start docker
dockerd
go test ./...
rm -rf /usr/local/go /usr/lib/go /usr/local/bin/go
wget https://go.dev/dl/go1.23.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.23.0.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
go version
go test ./...
