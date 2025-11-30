
ls -la
ls -la .github
ls -la .github/workflows
cat .github/workflows/linux.yml
apt-get update
apt-get install -y golang zsh fish tmux
wget https://dl.google.com/go/go1.20.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.20.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
curl -O https://dl.google.com/go/go1.20.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.20.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
apt-get install -y curl
curl -O https://dl.google.com/go/go1.20.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.20.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
tar -C /usr/local -xzf go1.20.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
go version
export PATH=$PATH:/usr/local/go/bin && go version
ls -la /usr/local/go/bin
export PATH=/usr/local/go/bin:$PATH && go version
go get ./...
make test
apt-get install -y make
make test
