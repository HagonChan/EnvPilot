ls -la
ls -la .github
ls -la .github/workflows
open "README.md"
open "CONTRIBUTING.md"
goto 60
go version && git --version && yarn --version
sudo apt-get update && sudo apt-get install -y golang
apt-get update && apt-get install -y golang
go version
git --version
yarn --version
apt-get install -y yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && apt-get update && apt-get install -y yarn
apt-get install -y curl gnupg
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && apt-get update && apt-get install -y yarn
yarn --version
goto 80
yarn install
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode72 && apt-get install -y nodejs
dpkg --remove --force-remove-reinstreq libnode72 && apt-get install -y nodejs
apt-get remove -y nodejs && apt-get install -y nodejs
dpkg --remove --force-remove-reinstreq nodejs libnode72 && apt-get install -y nodejs
node --version
yarn --version
yarn install
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
node --version
yarn --version
yarn install
yarn build
goto 120
goto 150
goto 300
goto 400
go install github.com/onsi/ginkgo/v2/ginkgo@latest
go install github.com/onsi/ginkgo/v2/ginkgo@latest
git clone https://github.com/onsi/ginkgo.git && cd ginkgo && go install ./v2/ginkgo
go test ./...
wget https://dl.google.com/go/go1.21.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.21.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
apt-get install -y wget
wget https://dl.google.com/go/go1.21.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.21.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
go version
export PATH=/usr/local/go/bin:$PATH && go version
/usr/local/go/bin/go version
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.21.0.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
/usr/local/go/bin/go version
go test ./...

