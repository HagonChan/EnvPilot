ls -la
open "go.mod"
ls -la .github/workflows
open ".github/workflows/ci.yml"
scroll_down
go version
apt-get update
wget https://go.dev/dl/go1.22.3.linux-amd64.tar.gz && sudo tar -C /usr/local -xzf go1.22.3.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
apt-get install -y wget
wget https://go.dev/dl/go1.22.3.linux-amd64.tar.gz && sudo tar -C /usr/local -xzf go1.22.3.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
tar -C /usr/local -xzf go1.22.3.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
go version
/usr/local/go/bin/go version
rm -rf /usr/local/go
tar -C /usr/local -xzf go1.22.3.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
go version
echo $PATH

