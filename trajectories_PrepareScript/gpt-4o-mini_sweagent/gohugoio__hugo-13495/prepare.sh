ls -al
ls -al .circleci
open ".circleci/config.yml"
open "go.mod"
apt update
apt install golang -y
go install github.com/goharbor/hugoreleaser@latest
search_dir hugoreleaser
open "hugoreleaser.yaml"
git config --global --get user.name

git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
go install github.com/goharbor/hugoreleaser-archive-plugins@latest
find_file Makefile
open "releaser.go"
find_file '*.sh'
open "internal/warpc/build.sh"
bash internal/warpc/build.sh
search_file 'go 1.23.0' go.mod
edit 'go 1.23.0' 'go 1.23'
open "go.mod"
edit 'go 1.23.0' 'go 1.23'
goto 175
edit 'go 1.23.0' 'go 1.23'
goto 175
edit 'go 1.23.0' 'go 1.23' True
go mod tidy
edit 'go 1.23' 'go 1.18' True
go mod tidy
npm install -g javy
apt install nodejs npm -y
npm install -g javy
bash internal/warpc/build.sh
javy --version
npm config get prefix
ls -al /usr/local/bin
npm install -g javy
bash internal/warpc/build.sh
echo $PATH
ls -al /usr/local/lib/node_modules
ln -s /usr/local/lib/node_modules/javy/bin/javy /usr/local/bin/javy
bash internal/warpc/build.sh
ls -al /usr/local/lib/node_modules/javy/bin
find /usr/local/lib/node_modules/javy -type f -name 'javy'
npm uninstall -g javy
npm install -g javy
bash internal/warpc/build.sh
ls -al /usr/local/bin

