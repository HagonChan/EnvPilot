ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
open "go.mod"
wget https://dl.google.com/go/go1.19.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.19.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
apt-get update && apt-get install -y wget
wget https://dl.google.com/go/go1.19.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.19.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
go version
go mod download
./tests/tests_all.sh
wget https://dl.google.com/go/go1.21.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.21.0.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
go version
./tests/tests_all.sh
wget https://dl.google.com/go/go1.19.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.19.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
go version
./tests/tests_all.sh
apt-get install -y docker-compose
./tests/tests_all.sh
apt-get install -y docker.io && systemctl start docker
service docker start
docker --version
dockerd &
docker ps
open "tests/tests_all.sh"
export GITHUB_ACTION=true && ./tests/tests_all.sh
rm -rf /usr/local/go && wget https://dl.google.com/go/go1.19.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.19.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
go version
export GITHUB_ACTION=true && ./tests/tests_all.sh
rm -rf /usr/local/go && wget https://dl.google.com/go/go1.21.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.21.0.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
go version
export GITHUB_ACTION=true && ./tests/tests_all.sh
rm -rf /usr/local/go && wget https://dl.google.com/go/go1.19.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.19.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
go version
export GITHUB_ACTION=true && ./tests/tests_all.sh
open "tests/go.mod"
edit 'go 1.23.0' 'go 1.19'
edit 'toolchain go1.23.11' ''
export GITHUB_ACTION=true && ./tests/tests_all.sh
rm -rf /usr/local/go && wget https://dl.google.com/go/go1.21.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.21.0.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
go version
export GITHUB_ACTION=true && ./tests/tests_all.sh
rm -rf /usr/local/go && wget https://dl.google.com/go/go1.19.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.19.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
go version
export GITHUB_ACTION=true && ./tests/tests_all.sh
edit 'go 1.23.0' 'go 1.19'
edit 'toolchain go1.23.11' ''
export GITHUB_ACTION=true && ./tests/tests_all.sh
rm -rf /usr/local/go && wget https://dl.google.com/go/go1.21.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.21.0.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
go version

