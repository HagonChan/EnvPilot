find_file '*.yml'
open "/testbed/.circleci/config.yml"
find_file Makefile
open "/testbed/Makefile"
make
apt-get update
apt-get install -y make
make
apt-get update
apt-get install -y golang
make
apt-get remove -y golang
wget https://golang.org/dl/go1.20.linux-amd64.tar.gz
curl -O https://golang.org/dl/go1.20.linux-amd64.tar.gz
apt-get install -y curl
curl -O https://golang.org/dl/go1.20.linux-amd64.tar.gz
curl -O https://golang.org/dl/go1.20.5.linux-amd64.tar.gz
find_file '*.tar.gz'
tar -C /usr/local -xzf go1.20.5.linux-amd64.tar.gz
tar -C /usr/local -xzf go1.20.linux-amd64.tar.gz
echo $PATH
find_file README.md
open "/testbed/README.md"
apt-get install -y golang-go
apt-get remove -y golang-go
add-apt-repository ppa:longsleep/golang-backports
curl -LO https://golang.org/dl/go1.20.linux-amd64.tar.gz
tar -C /usr/local -xzf go1.20.linux-amd64.tar.gz
insert 'export PATH=$PATH:/usr/local/go/bin' 0

