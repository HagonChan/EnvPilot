ls -la
ls -la .github/workflows
open ".github/workflows/test-all.yml"
apt-get update && apt-get install -y build-essential clang cmake make python3 python3-pip libssl-dev zlib1g-dev libicu-dev openjdk-17-jdk android-sdk cocoapods
apt-get install -y build-essential clang cmake make python3 python3-pip libssl-dev zlib1g-dev libicu-dev openjdk-17-jdk android-sdk
gem install cocoapods
apt-get install -y ruby ruby-dev
gem install cocoapods
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
apt-get install -y curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
nvm install 20.19.4 && nvm use 20.19.4
npm install -g yarn

