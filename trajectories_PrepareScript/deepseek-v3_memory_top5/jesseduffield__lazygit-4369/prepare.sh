ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
wget https://dl.google.com/go/go1.22.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.22.0.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
apt-get update && apt-get install -y wget build-essential ca-certificates curl gettext libexpat1-dev libssl-dev libz-dev openssl
wget https://dl.google.com/go/go1.22.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.22.0.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
go version
go test ./... -short -cover
cat .github/workflows/ci.yml | grep -A 10 "integration-tests"
grep -A 5 "go test" .github/workflows/ci.yml
go test ./pkg/integration/tests/... -short
find . -name "*.sh" -o -name "*.go" | grep -i integration
open "./scripts/run_integration_tests.sh"
./scripts/run_integration_tests.sh
go test ./... -short -cover
