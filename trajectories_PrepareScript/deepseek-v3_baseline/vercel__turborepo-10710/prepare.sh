ls -la
ls -la .github/workflows
open ".github/workflows/turborepo-test.yml"
search_file install .github/workflows/turborepo-test.yml
search_file test .github/workflows/turborepo-test.yml
open "Cargo.toml"
find_file package.json
open "package.json"
pnpm install
npm install -g pnpm@8.14.0
apt update && apt install -y nodejs
apt install -y nodejs
curl -fsSL https://deb.nodesource.com/setup_22.x | bash - && apt-get install -y nodejs
apt install -y curl
curl -fsSL https://deb.nodesource.com/setup_22.x | bash - && apt-get install -y nodejs
wget https://nodejs.org/dist/v22.0.0/node-v22.0.0-linux-x64.tar.xz
apt install -y wget
wget https://nodejs.org/dist/v22.0.0/node-v22.0.0-linux-x64.tar.xz
tar -xf node-v22.0.0-linux-x64.tar.xz
apt install -y xz-utils
tar -xf node-v22.0.0-linux-x64.tar.xz
mv node-v22.0.0-linux-x64 /usr/local/nodejs
export PATH=/usr/local/nodejs/bin:$PATH
echo 'export PATH=/usr/local/nodejs/bin:$PATH' >> ~/.bashrc

