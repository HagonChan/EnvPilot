ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
open "go.mod"
go mod download
open "README.md"
go install github.com/magefile/mage@v1.15.0
mage test
