ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
go version
sudo apt-get update && sudo apt-get install -y golang-1.22
apt-get update && apt-get install -y golang-1.22
go version
ls -la /usr/lib/go-1.22/bin
export PATH=$PATH:/usr/lib/go-1.22/bin
go version
go test ./... -short -cover
