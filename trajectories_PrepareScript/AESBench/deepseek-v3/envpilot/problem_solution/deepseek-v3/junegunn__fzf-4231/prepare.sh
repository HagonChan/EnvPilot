ls -la
ls -la .github/workflows
open ".github/workflows/linux.yml"
wget https://dl.google.com/go/go1.20.linux-amd64.tar.gz -O /tmp/go1.20.linux-amd64.tar.gz
sudo apt-get update && sudo apt-get install -y wget
apt-get update && apt-get install -y wget
wget https://dl.google.com/go/go1.20.linux-amd64.tar.gz -O /tmp/go1.20.linux-amd64.tar.gz && tar -C /usr/local -xzf /tmp/go1.20.linux-amd64.tar.gz

