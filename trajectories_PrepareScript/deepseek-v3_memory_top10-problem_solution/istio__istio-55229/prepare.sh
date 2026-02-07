ls -la
ls -la .github/workflows
open "Makefile"
open "README.md"
open "go.mod"
apt-get update && apt-get install -y git curl wget tar gzip ca-certificates
wget https://dl.google.com/go/go1.22.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.22.0.linux-amd64.tar.gz && rm go1.22.0.linux-amd64.tar.gz

