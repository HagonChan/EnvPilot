
ls -R
open "README.md" 1
go version
apt-get update && apt-get install -y golang
wget https://dl.google.com/go/go1.22.3.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.22.3.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
curl -O https://dl.google.com/go/go1.22.3.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.22.3.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
apt-get install -y curl
curl -O https://dl.google.com/go/go1.22.3.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.22.3.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH

