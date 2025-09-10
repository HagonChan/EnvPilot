ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
wget https://dl.google.com/go/go1.24.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.24.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
apt-get update && apt-get install -y wget
wget https://dl.google.com/go/go1.24.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.24.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
go version
apt-get install -y pandoc gcc libssl-dev
apt-get install -y mingw-w64 dart-sass
apt-get install -y mingw-w64
wget https://github.com/sass/dart-sass/releases/download/1.69.5/dart-sass-1.69.5-linux-x64.tar.gz && tar -xzf dart-sass-1.69.5-linux-x64.tar.gz && mv dart-sass /usr/local/bin/
pandoc --version && mingw-w64 --version && dart-sass --version && gcc --version && openssl version
x86_64-w64-mingw32-gcc --version
dart-sass --version
ls /usr/local/bin/dart-sass && /usr/local/bin/dart-sass --version
mv dart-sass/sass /usr/local/bin/dart-sass && dart-sass --version
ls dart-sass
tar -xzf dart-sass-1.69.5-linux-x64.tar.gz && mv dart-sass/sass /usr/local/bin/dart-sass && dart-sass --version
ls -R dart-sass-1.69.5-linux-x64
ls
tar -xzf dart-sass-1.69.5-linux-x64.tar.gz && ls -R dart-sass
mv dart-sass/sass /usr/local/bin/dart-sass && dart-sass --version
chmod +x /usr/local/bin/dart-sass && dart-sass --version
echo $PATH
ls /usr/local/bin/dart-sass
mv /usr/local/bin/dart-sass/sass /usr/local/bin/dart-sass && chmod +x /usr/local/bin/dart-sass && dart-sass --version
rm -rf /usr/local/bin/dart-sass && mv dart-sass/sass /usr/local/bin/dart-sass && chmod +x /usr/local/bin/dart-sass && dart-sass --version
tar -xzf dart-sass-1.69.5-linux-x64.tar.gz && mv dart-sass/sass /usr/local/bin/dart-sass && chmod +x /usr/local/bin/dart-sass && dart-sass --version
go install github.com/magefile/mage@v1.15.0
mage --version
ls $GOPATH/bin
ls /usr/local/go/bin
echo $GOPATH
export GOPATH=$HOME/go && export PATH=$PATH:$GOPATH/bin && echo $GOPATH
go install github.com/magefile/mage@v1.15.0 && ls $GOPATH/bin
mage --version
go get ./...
mage -l
mage test
wget https://github.com/sass/dart-sass/releases/download/1.69.5/dart-sass-1.69.5-linux-x64.tar.gz && tar -xzf dart-sass-1.69.5-linux-x64.tar.gz && mv dart-sass/sass /usr/local/bin/dart-sass && chmod +x /usr/local/bin/dart-sass && dart-sass --version
mage test
