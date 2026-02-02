ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
open "package.json"
sudo apt-get update && sudo apt-get install -y postgresql-client mongodb-tools psql aws-cli localstack supabase-cli
apt-get update && apt-get install -y postgresql-client mongodb-tools psql aws-cli localstack supabase-cli
apt-get install -y postgresql-client
wget -qO - https://www.mongodb.org/static/pgp/server-6.0.asc | apt-key add - && echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/6.0 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-6.0.list && apt-get update && apt-get install -y mongodb-database-tools
apt-get install -y wget gnupg
wget -qO - https://www.mongodb.org/static/pgp/server-6.0.asc | apt-key add - && echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/6.0 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-6.0.list && apt-get update && apt-get install -y mongodb-database-tools
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && unzip awscliv2.zip && ./aws/install
apt-get install -y curl
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && unzip awscliv2.zip && ./aws/install
apt-get install -y unzip
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && unzip awscliv2.zip && ./aws/install
aws --version
apt-get install -y python3 python3-pip
pip --version
pip install localstack supabase-cli
pip install localstack
pip install tomli
pip install localstack
pip install --no-build-isolation localstack
localstack --version
curl -fsSL https://supabase.github.io/supabase-cli/install.sh | sh
curl -fsSL https://github.com/supabase/cli/releases/latest/download/supabase-cli-linux-amd64.tar.gz | tar xvz -C /usr/local/bin
curl -fsSL https://raw.githubusercontent.com/supabase/cli/main/install.sh | sh
npm install -g supabase
node --version
curl -fsSL https://deb.nodesource.com/setup_23.x | bash - && apt-get install -y nodejs
node --version && npm --version
npm install -g pnpm
pnpm --version
pnpm install
pnpm run build:all
pnpm test
localstack start -d
open "package.json"
pnpm test:int
pnpm test:components
ls -la
open "jest.config.js"
pnpm jest --config=jest.config.js "packages/*/src/**/*.spec.ts"
