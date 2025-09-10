ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "go.mod"
open "Makefile"
open "Makefile.common"
go version
wget https://go.dev/dl/go1.23.4.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.23.4.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
curl -LO https://go.dev/dl/go1.23.4.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.23.4.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
apt-get update && apt-get install -y curl
curl -LO https://go.dev/dl/go1.23.4.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.23.4.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
go version
echo $GOPATH && echo $GOROOT
export GOPATH=$HOME/go && export GOROOT=/usr/local/go && export PATH=$PATH:$GOPATH/bin
go mod download
make test
apt-get install -y make
make test
go install golang.org/x/tools/cmd/goyacc@latest
make test
export CGO_ENABLED=1 && make test
apt-get install -y gcc
export CGO_ENABLED=1 && make test
apt-get install -y npm
export CGO_ENABLED=1 && make test
export CGO_ENABLED=1 && make test-no-race
open "Makefile"
cat Makefile
edit '.PHONY: test
# If we only want to only test go code we have to change the test target
# which is called by all.
ifeq ($(GO_ONLY),1)
test: common-test check-go-mod-version
else
test: check-generated-parser common-test ui-build-module ui-test ui-lint check-go-mod-version
endif' '.PHONY: test
# If we only want to only test go code we have to change the test target
# which is called by all.
ifeq ($(GO_ONLY),1)
test: common-test check-go-mod-version
else
test: check-generated-parser common-test ui-build-module ui-test ui-lint check-go-mod-version
endif

.PHONY: test-no-race
# Run tests without the -race flag to avoid overhead.
ifeq ($(GO_ONLY),1)
test-no-race: common-test-no-race check-go-mod-version
else
test-no-race: check-generated-parser common-test-no-race ui-build-module ui-test ui-lint check-go-mod-version
endif'
open "Makefile"
cat Makefile.common
edit '.PHONY: test
# If we only want to only test go code we have to change the test target
# which is called by all.
ifeq ($(GO_ONLY),1)
test: common-test check-go-mod-version
else
test: check-generated-parser common-test ui-build-module ui-test ui-lint check-go-mod-version
endif' '.PHONY: test
# If we only want to only test go code we have to change the test target
# which is called by all.
ifeq ($(GO_ONLY),1)
test: common-test check-go-mod-version
else
test: check-generated-parser common-test ui-build-module ui-test ui-lint check-go-mod-version
endif

.PHONY: test-no-race
# Run tests without the -race flag to avoid race detection overhead.
ifeq ($(GO_ONLY),1)
test-no-race: common-test-no-race check-go-mod-version
else
test-no-race: check-generated-parser common-test-no-race ui-build-module ui-test ui-lint check-go-mod-version
endif'
grep -A 10 -B 10 "test:" Makefile.common
cat Makefile
edit '.PHONY: test
# If we only want to only test go code we have to change the test target
# which is called by all.
ifeq ($(GO_ONLY),1)
test: common-test check-go-mod-version
else
test: check-generated-parser common-test ui-build-module ui-test ui-lint check-go-mod-version
endif' '.PHONY: test
# If we only want to only test go code we have to change the test target
# which is called by all.
ifeq ($(GO_ONLY),1)
test: common-test check-go-mod-version
else
test: check-generated-parser common-test ui-build-module ui-test ui-lint check-go-mod-version
endif

.PHONY: test-no-race
# If we only want to only test go code we have to change the test target
# which is called by all.
ifeq ($(GO_ONLY),1)
test-no-race: common-test-no-race check-go-mod-version
else
test-no-race: check-generated-parser common-test-no-race ui-build-module ui-test ui-lint check-go-mod-version
endif'
grep -A 10 -B 10 "test:" Makefile
edit '.PHONY: test
# If we only want to only test go code we have to change the test target
# which is called by all.
ifeq ($(GO_ONLY),1)
test: common-test check-go-mod-version
else
test: check-generated-parser common-test ui-build-module ui-test ui-lint check-go-mod-version
endif' '.PHONY: test
# If we only want to only test go code we have to change the test target
# which is called by all.
ifeq ($(GO_ONLY),1)
test: common-test check-go-mod-version
else
test: check-generated-parser common-test ui-build-module ui-test ui-lint check-go-mod-version
endif

.PHONY: test-no-race
# Run tests without the -race flag to avoid overhead
ifeq ($(GO_ONLY),1)
test-no-race: common-test-short check-go-mod-version
else
test-no-race: check-generated-parser common-test-short ui-build-module ui-test ui-lint check-go-mod-version
endif'
grep -A 10 -B 10 "test:" Makefile
edit '.PHONY: test
# If we only want to only test go code we have to change the test target
# which is called by all.
ifeq ($(GO_ONLY),1)
test: common-test check-go-mod-version
else
test: check-generated-parser common-test ui-build-module ui-test ui-lint check-go-mod-version
endif' '.PHONY: test
# If we only want to only test go code we have to change the test target
# which is called by all.
ifeq ($(GO_ONLY),1)
test: common-test check-go-mod-version
else
test: check-generated-parser common-test ui-build-module ui-test ui-lint check-go-mod-version
endif

.PHONY: test-no-race
# If we only want to only test go code we have to change the test target
# which is called by all.
ifeq ($(GO_ONLY),1)
test-no-race: common-test-short check-go-mod-version
else
test-no-race: check-generated-parser common-test-short ui-build-module ui-test ui-lint check-go-mod-version
endif'
open "Makefile"
cat Makefile
grep -A 10 -B 10 "test:" Makefile
grep -A 10 -B 10 "common-test:" Makefile.common
edit '.PHONY: test
# If we only want to only test go code we have to change the test target
# which is called by all.
ifeq ($(GO_ONLY),1)
test: common-test check-go-mod-version
else
test: check-generated-parser common-test ui-build-module ui-test ui-lint check-go-mod-version
endif' '.PHONY: test
# If we only want to only test go code we have to change the test target
# which is called by all.
ifeq ($(GO_ONLY),1)
test: common-test check-go-mod-version
else
test: check-generated-parser common-test ui-build-module ui-test ui-lint check-go-mod-version
endif

.PHONY: test-no-race
# Run tests without the -race flag to avoid overhead.
ifeq ($(GO_ONLY),1)
test-no-race: common-test-short check-go-mod-version
else
test-no-race: check-generated-parser common-test-short ui-build-module ui-test ui-lint check-go-mod-version
endif'
open "Makefile"
cat Makefile
grep -A 10 -B 10 "common-test:" Makefile.common
grep -A 10 -B 10 "test:" Makefile
grep -A 10 -B 10 "common-test:" Makefile.common

