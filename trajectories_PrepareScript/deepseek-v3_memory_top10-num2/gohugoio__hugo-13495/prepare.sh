ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
open "README.md"
wget https://dl.google.com/go/go1.23.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.23.0.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
apt-get update && apt-get install -y wget
wget https://dl.google.com/go/go1.23.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.23.0.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
go version
apt-get update && apt-get install -y gcc pandoc mingw-w64 dart-sass ruby python3 asciidoctor docutils staticcheck
apt-get install -y gcc pandoc mingw-w64 ruby python3 asciidoctor python3-docutils
wget https://github.com/sass/dart-sass/releases/download/1.69.5/dart-sass-1.69.5-linux-x64.tar.gz && tar -xvzf dart-sass-1.69.5-linux-x64.tar.gz && mv dart-sass /usr/local/lib/ && ln -s /usr/local/lib/dart-sass/sass /usr/local/bin/sass
go install honnef.co/go/tools/cmd/staticcheck@latest
go install github.com/magefile/mage@latest
go mod download
mage test
export PATH=$PATH:$(go env GOPATH)/bin && mage test
open "go.mod"
cat go.mod
open "tpl/internal/go_templates/htmltemplate/content_test.go"
cat tpl/internal/go_templates/htmltemplate/content_test.go
edit '//go:build go1.13 && !windows
// +build go1.13,!windows' '//go:build go1.18 && !windows
// +build go1.18,!windows' True
sed -i 's/go1.13/go1.18/g' tpl/internal/go_templates/htmltemplate/content_test.go
mage test
sed -i 's/go1.13/go1.18/g' tpl/internal/go_templates/htmltemplate/escape_test.go
sed -i 's/go1.13/go1.18/g' tpl/internal/go_templates/texttemplate/parse/parse_test.go
mage test
sed -i 's/go1.13/go1.18/g' tpl/internal/go_templates/htmltemplate/js_test.go
sed -i 's/go1.13/go1.18/g' tpl/internal/go_templates/htmltemplate/url_test.go
mage test
sed -i 's/go1.13/go1.18/g' tpl/internal/go_templates/htmltemplate/template_test.go
sed -i 's/go1.13/go1.18/g' tpl/internal/go_templates/htmltemplate/example_test.go
mage test
export HUGO_ROOT=$(pwd) && mage test
export HUGO_ROOT=$(pwd) && cd codegen && go test -v
open "codegen/methods.go"
find . -name methods.go
open "methods.go"
cat ../methods.go
cd .. && find . -name methods.go
open "codegen/methods.go"
cat codegen/methods.go
export HUGO_ROOT=$(pwd) && cd codegen && go test -v
open "codegen/methods_test.go"
find .. -name methods_test.go
open "../codegen/methods_test.go"
cat ../codegen/methods_test.go
edit 'dir, _ := os.Getwd()
	insp := NewInspector(dir)' 'dir := os.Getenv("HUGO_ROOT")
	if dir == "" {
		dir, _ = os.Getwd()
	}
	insp := NewInspector(dir)' True
sed -i 's/dir, _ := os.Getwd()/dir := os.Getenv("HUGO_ROOT")\n\tif dir == "" {\n\t\tdir, _ = os.Getwd()\n\t}/g' ../codegen/methods_test.go
export HUGO_ROOT=$(pwd) && cd codegen && go test -v

