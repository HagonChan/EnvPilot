ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
open "package.json"
apt-get update && apt-get install -y nodejs && npm install -g pnpm@9.7.1
node --version && npm --version
curl -sL https://deb.nodesource.com/setup_23.x | bash - && apt-get install -y nodejs
apt-get install -y curl
curl -sL https://deb.nodesource.com/setup_23.x | bash - && apt-get install -y nodejs
node --version && npm --version
npm install -g pnpm@9.7.1
pnpm --version
apt-get install -y postgresql mongodb chromium
apt-get install -y postgresql
apt-get install -y gnupg && wget -qO - https://www.mongodb.org/static/pgp/server-6.0.asc | apt-key add - && echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/6.0 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-6.0.list && apt-get update && apt-get install -y mongodb-org
apt-get install -y wget
wget -qO - https://www.mongodb.org/static/pgp/server-6.0.asc | apt-key add - && echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/6.0 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-6.0.list && apt-get update && apt-get install -y mongodb-org
apt-get install -y chromium-browser
pnpm exec playwright install-deps
pnpm install
pnpm exec playwright install
apt-get install -y libnss3 libnspr4 libatk1.0-0 libatk-bridge2.0-0 libcups2 libxcomposite1 libxdamage1 libxfixes3 libxrandr2 libgbm1 libxkbcommon0 libpango-1.0-0 libcairo2 libasound2 libatspi2.0-0
pnpm exec playwright install
apt-get install -y libx11-xcb1 libxcursor1 libgtk-3-0 libpangocairo-1.0-0 libcairo-gobject2 libgdk-pixbuf-2.0-0
pnpm exec playwright install
apt-get install -y libgstreamer1.0-0 libgtk-4-1 libgraphene-1.0-0 libatomic1 libwoff2dec1.0.2 libvpx7 libevent-2.1-7 libopus0 libgstreamer-plugins-base1.0-0 libenchant-2-2 libsecret-1-0 libhyphen0 libmanette-0.2-0 libgles2 libx264-163
pnpm exec playwright install
pnpm test
printenv | grep S3_BUCKET
export S3_BUCKET=test-bucket && export AWS_ACCESS_KEY_ID=test-key && export AWS_SECRET_ACCESS_KEY=test-secret
pnpm test
docker-compose up -d localstack
apt-get install -y docker.io docker-compose
ls -la docker-compose.yml
create docker-compose.yml
edit '' 'version: '"'"'3.8'"'"'

services:
  localstack:
    image: localstack/localstack
    ports:
      - "4566:4566"
    environment:
      - SERVICES=s3
      - DEBUG=1
      - DOCKER_HOST=unix:///var/run/docker.sock
    volumes:
      - "/var/run/docker.sock:/var/run/docker.sock"' True
edit '' 'version: '"'"'3.8'"'"'

services:
  localstack:
    image: localstack/localstack
    ports:
      - "4566:4566"
    environment:
      - SERVICES=s3
      - DEBUG=1
      - DOCKER_HOST=unix:///var/run/docker.sock
    volumes:
      - "/var/run/docker.sock:/var/run/docker.sock"' True
edit '' 'version: '"'"'3.8'"'"'

services:' True
insert 'version: '"'"'3.8'"'"''
insert '

services:'
insert '
  localstack:
    image: localstack/localstack'
insert '
    ports:
      - "4566:4566"'
insert '
    environment:
      - SERVICES=s3
      - DEBUG=1
      - DOCKER_HOST=unix:///var/run/docker.sock'
insert '
    volumes:
      - "/var/run/docker.sock:/var/run/docker.sock"'
docker-compose up -d localstack
service docker start
systemctl start docker
dockerd
pnpm test --help

