ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
sudo apt-get update && sudo apt-get install -y gcc pandoc mingw-w64 dart-sass ruby python3 asciidoctor docutils staticcheck libc6-dev build-essential curl tar git ca-certificates
apt-get update && apt-get install -y gcc pandoc mingw-w64 dart-sass ruby python3 asciidoctor docutils staticcheck libc6-dev build-essential curl tar git ca-certificates
curl -LJO "https://github.com/sass/dart-sass/releases/download/1.80.3/dart-sass-1.80.3-linux-x64.tar.gz" && echo "7c933edbad0a7d389192c5b79393485c088bd2c4398e32f5754c32af006a9ffd  dart-sass-1.80.3-linux-x64.tar.gz" | sha256sum -c && tar -xvf "dart-sass-1.80.3-linux-x64.tar.gz" && export PATH="$PATH:$(pwd)/dart-sass"
apt-get install -y curl
curl -LJO "https://github.com/sass/dart-sass/releases/download/1.80.3/dart-sass-1.80.3-linux-x64.tar.gz" && echo "7c933edbad0a7d389192c5b79393485c088bd2c4398e32f5754c32af006a9ffd  dart-sass-1.80.3-linux-x64.tar.gz" | sha256sum -c && tar -xvf "dart-sass-1.80.3-linux-x64.tar.gz" && export PATH="$PATH:$(pwd)/dart-sass"
curl -LO "https://dl.google.com/go/go1.23.0.linux-amd64.tar.gz" && tar -C /usr/local -xzf go1.23.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
go version
go install honnef.co/go/tools/cmd/staticcheck@latest
go install honnef.co/go/tools/cmd/staticcheck@latest
go install github.com/magefile/mage@latest
export GOPROXY=direct && go install github.com/magefile/mage@latest
curl -LO "https://github.com/magefile/mage/releases/download/v1.15.0/mage_1.15.0_Linux-64bit.tar.gz" && tar -xvf mage_1.15.0_Linux-64bit.tar.gz && chmod +x mage && mv mage /usr/local/bin/
mage --version
mage test
ping -c 4 google.com
apt-get install -y iputils-ping
ping -c 4 google.com
