ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
open "README.md"
apt-get update -y
apt-get install -y golang
go version
wget https://golang.org/dl/go1.23.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.23.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
apt-get install -y wget curl tar
wget https://golang.org/dl/go1.23.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.23.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
go version
export PATH=/usr/local/go/bin:$PATH && go version
apt-get install -y gcc pandoc mingw-w64 dart-sass ruby python3 asciidoctor docutils
apt-get install -y gcc pandoc mingw-w64 ruby python3 asciidoctor python3-docutils
go install github.com/magefile/mage@latest
go env -w GOPROXY=https://proxy.golang.org,direct && go install github.com/magefile/mage@latest
wget https://github.com/magefile/mage/releases/download/v1.15.0/mage_1.15.0_Linux-64bit.tar.gz && tar -xzf mage_1.15.0_Linux-64bit.tar.gz && mv mage /usr/local/bin/
mage --version
mage test
open "/testbed/hugolib/integrationtest_builder.go" 323
find_file integrationtest_builder.go
open "/testbed/hugolib/integrationtest_builder.go" 323
open "/testbed/hugolib/integrationtest_builder.go"
grep -A 10 -B 10 "s.Assert(content, qt.Contains, match, cm)" /testbed/hugolib/integrationtest_builder.go
wget https://github.com/sass/dart-sass/releases/download/1.69.5/dart-sass-1.69.5-linux-x64.tar.gz && tar -xzf dart-sass-1.69.5-linux-x64.tar.gz && mv dart-sass /usr/local/bin/
dart-sass --version
mv dart-sass-1.69.5-linux-x64/sass /usr/local/bin/dart-sass && dart-sass --version
ls -la dart-sass-1.69.5-linux-x64
ls -la
tar -xzf dart-sass-1.69.5-linux-x64.tar.gz && mv dart-sass-1.69.5-linux-x64/sass /usr/local/bin/dart-sass && dart-sass --version
ls -la dart-sass-1.69.5-linux-x64
ls -la
ls -la dart-sass
mv dart-sass/sass /usr/local/bin/dart-sass && dart-sass --version
export PATH=$PATH:/usr/local/bin && dart-sass --version
ls -la /usr/local/bin/dart-sass
mv /usr/local/bin/sass /usr/local/bin/dart-sass && dart-sass --version
mv dart-sass/sass /usr/local/bin/dart-sass && dart-sass --version
ls -la dart-sass
tar -xzf dart-sass-1.69.5-linux-x64.tar.gz && ls -la
tar -xzf dart-sass-1.69.5-linux-x64.tar.gz --one-top-level && ls -la dart-sass-1.69.5-linux-x64
mv dart-sass-1.69.5-linux-x64/dart-sass/sass /usr/local/bin/dart-sass && dart-sass --version
ls -la /usr/local/bin/dart-sass
mv /usr/local/bin/sass /usr/local/bin/dart-sass && dart-sass --version
mv dart-sass-1.69.5-linux-x64/dart-sass/sass /usr/local/bin/dart-sass && dart-sass --version
ls -la dart-sass-1.69.5-linux-x64/dart-sass
mage test
