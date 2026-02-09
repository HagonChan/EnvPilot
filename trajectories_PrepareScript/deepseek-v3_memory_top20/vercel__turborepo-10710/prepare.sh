ls -la
ls -la .github/workflows
open ".github/workflows/test-js-packages.yml"
open "package.json"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
apt-get update && apt-get install -y curl
apt-get clean
apt-get update && apt-get install -y curl
which curl || echo "curl not installed"
which wget || echo "wget not installed"
apt-get install -y nodejs npm
node --version || echo "Node.js not installed"; npm --version || echo "npm not installed"
wget https://nodejs.org/dist/v22.16.0/node-v22.16.0-linux-x64.tar.xz -O node.tar.xz
bash -c "$(cat <(echo '#!/bin/bash') <(echo 'export NVM_DIR="$HOME/.nvm"') <(echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"') <(echo 'curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash'))"
apt-get install -y build-essential libssl-dev
apt-get clean
apt-get install -y build-essential libssl-dev
df -h
du -sh /* | sort -rh | head -n 10
find /var/log -type f -exec du -h {} + | sort -rh | head -n 5
wget https://nodejs.org/dist/v22.16.0/node-v22.16.0-linux-x64.tar.xz -O node.tar.xz
curl --version || echo "curl not installed"
find / -name "node" -type f 2>/dev/null | head -n 5
