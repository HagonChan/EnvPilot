ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
scroll_down
go install github.com/magefile/mage@v1.15.0
sudo apt-get update && sudo apt-get install -y golang-1.24
apt-get update && apt-get install -y golang-1.24
wget https://dl.google.com/go/go1.24.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.24.0.linux-amd64.tar.gz && echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.bashrc && source ~/.bashrc
apt-get install -y wget

