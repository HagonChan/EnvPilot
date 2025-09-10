ls -la
ls -la .github/workflows
open "Makefile"
open "Makefile.core.mk"
search_file test Makefile.core.mk
apt-get update && apt-get install -y golang gcc make libssl-dev
go version
open "VERSION"
go get ./...
wget https://golang.org/dl/go1.21.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.21.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
apt-get install -y wget
wget https://golang.org/dl/go1.21.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.21.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
go version
export PATH=$PATH:/usr/local/go/bin && go version
which go
apt-get remove -y golang && export PATH=$PATH:/usr/local/go/bin && go version
find / -name go 2>/dev/null
export PATH=/usr/local/go/bin:$PATH && go version
/usr/local/go/bin/go version
rm -rf /usr/local/go && wget https://golang.org/dl/go1.21.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.21.0.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH && /usr/local/go/bin/go version
ls -la /usr/local/go/bin/go
env | grep -i go

