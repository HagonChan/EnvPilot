ls -R
find . -name "*.yml" -o -name "*.yaml"
open ".github/workflows/codeql-analysis.yml"
open "go.mod"
apt-get update
wget https://golang.org/dl/go1.24.linux-amd64.tar.gz
curl -O https://golang.org/dl/go1.24.linux-amd64.tar.gz
find . -type f -name "README.*"
open "./README.md"
open "./go-archive"
ls ./go-archive
open "./go-archive/README.md"
scroll_down
goto 100
open "./README.md"
ls ./bin
search_dir concourse
search_dir 'download concourse'
ls

open "Dockerfile"
