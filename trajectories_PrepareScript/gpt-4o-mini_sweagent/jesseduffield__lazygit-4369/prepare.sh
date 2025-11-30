
find_file '*.yml'
open "/testbed/.github/workflows/ci.yml"
sudo apt-get update && sudo apt-get install --no-install-recommends -y build-essential ca-certificates curl gettext libexpat1-dev libssl-dev libz-dev openssl
apt-get update && apt-get install --no-install-recommends -y build-essential ca-certificates curl gettext libexpat1-dev libssl-dev libz-dev openssl
apt-get install --no-install-recommends -y build-essential ca-certificates curl gettext libexpat1-dev libssl-dev libz-dev openssl
curl -sL "https://mirrors.edge.kernel.org/pub/software/scm/git/git-2.20.0.tar.xz" -o git.tar.xz && tar xJ -C "$HOME" -f git.tar.xz && cd "$HOME/git-2.20.0" && ./configure && make -j
make -C "$HOME/git-2.20.0" -j install
search_dir test
search_dir '// Test' /root/git-2.20.0
go test ./... -short -cover
wget https://golang.org/dl/go1.22.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.22.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
curl -LO https://golang.org/dl/go1.22.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.22.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
curl -O https://golang.org/dl/go1.22.linux-amd64.tar.gz
curl -LO https://dl.google.com/go/go1.22.linux-amd64.tar.gz

curl -L -o go1.22.linux-amd64.tar.gz https://dl.google.com/go/go1.22.linux-amd64.tar.gz
curl -L -o go1.22.linux-amd64.tar.gz https://dl.google.com/go/go1.22.linux-amd64.tar.gz
search_dir install /root/git-2.20.0
find_file 'install*' /root/git-2.20.0
open "/root/git-2.20.0/ci/install-dependencies.sh"
mkdir -p /usr/local/bin/git-lfs && cd /usr/local/bin/git-lfs && curl -L -O https://github.com/github/git-lfs/releases/download/v1.0.2/git-lfs-linux-amd64-1.0.2.tar.gz && tar -xzf git-lfs-linux-amd64-1.0.2.tar.gz && cp git-lfs-1.0.2/git-lfs .
tar -xzf git-lfs-linux-amd64-1.0.2.tar.gz && cp git-lfs-1.0.2/git-lfs /usr/local/bin/ && git-lfs install

