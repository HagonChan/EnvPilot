ls -la
ls -la .github/workflows
open "README.md"
open "Makefile"
open "Makefile.core.mk"
search_file test Makefile.core.mk
apt-get update && apt-get install -y git curl wget gcc make libssl-dev ca-certificates
apt-get install -y golang
go version
open "go.mod"
wget https://dl.google.com/go/go1.23.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.23.0.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
go version
export GOPATH=/root/go && export PATH=$PATH:/usr/local/go/bin:/root/go/bin
go mod download
make test
apt-get install -y docker.io
apt-get clean
apt-get install -y docker.io
df -h
du -sh /var/* | sort -rh | head -n 5
du -sh /var/lib/* | sort -rh | head -n 5
apt-get clean && rm -rf /var/lib/apt/lists/*
df -h
du -sh /usr/local/* | sort -rh | head -n 5
rm -rf /usr/local/go1.18.1
df -h
du -sh /var/log/* | sort -rh | head -n 5
go test ./...
