ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
open "go.mod"
wget https://dl.google.com/go/go1.19.linux-amd64.tar.gz
apt-get update && apt-get install -y wget
wget https://dl.google.com/go/go1.19.linux-amd64.tar.gz && tar -xzf go1.19.linux-amd64.tar.gz -C /usr/local
export PATH=$PATH:/usr/local/go/bin && go version
go mod download
export GOPROXY=https://goproxy.io && go mod download
chmod +x tests/tests_all.sh && ./tests/tests_all.sh
wget https://dl.google.com/go/go1.21.0.linux-amd64.tar.gz && tar -xzf go1.21.0.linux-amd64.tar.gz -C /usr/local
export PATH=$PATH:/usr/local/go/bin && go version
go mod download
./tests/tests_all.sh
wget https://dl.google.com/go/go1.24.0.linux-amd64.tar.gz && tar -xzf go1.24.0.linux-amd64.tar.gz -C /usr/local
export PATH=$PATH:/usr/local/go/bin && go version
go mod download
./tests/tests_all.sh
apt-get install -y docker-compose
./tests/tests_all.sh
service docker start
systemctl start docker
dockerd
dockerd --iptables=false
