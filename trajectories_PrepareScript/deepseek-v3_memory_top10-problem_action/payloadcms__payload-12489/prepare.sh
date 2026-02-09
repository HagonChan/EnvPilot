ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
open "package.json"
curl -fsSL https://get.pnpm.io/install.sh | sh -
apt-get update && apt-get install -y curl
curl -fsSL https://get.pnpm.io/install.sh | sh -
npm install -g pnpm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
curl -fsSL https://deb.nodesource.com/setup_23.x | bash -
apt install nodejs -y
node --version
npm install -g pnpm
pnpm --version
pnpm install
pnpm install
apt-get update && apt-get install -y libvips-dev
pnpm install
grep -r "sharp-libvips" node_modules/.pnpm/sharp@0.32.6/node_modules/sharp/install
mkdir -p /tmp/sharp-libvips && cd /tmp/sharp-libvips
wget https://github.com/lovell/sharp-libvips/releases/download/v0.32.6/libvips-8.14.5-linux-x64.tar.br
apt-get update && apt-get install -y wget
wget https://github.com/lovell/sharp-libvips/releases/download/v0.32.6/libvips-8.14.5-linux-x64.tar.br
pnpm install --ignore-scripts
cd /testbed
pnpm install --ignore-scripts
apt-get update && apt-get install -y postgresql-client mongodb-tools psql aws-cli localstack supabase-cli
apt-get install -y python3-pip && pip install awscli localstack
pip install tomli
pip install awscli localstack
pip install awscli
npm install -g supabase
wget https://github.com/supabase/cli/releases/latest/download/supabase_linux_amd64.tar.gz
tar -xzf supabase_linux_amd64.tar.gz && mv supabase /usr/local/bin/
supabase --version
pnpm exec playwright install
apt-get install -y libatk-bridge2.0-0 libgbm1 libxkbcommon0 libasound2 libatspi2.0-0
pnpm exec playwright install-deps
pnpm exec playwright install
pnpm test
open "packages/plugin-sentry/int.spec.ts"
find_file int.spec.ts
open "test/plugin-sentry/int.spec.ts"
open "test/helpers/initPayloadInt.js"
find_file initPayloadInt.js
open "test/plugin-sentry/int.spec.ts"
open "test/plugin-seo/int.spec.ts"
create test/helpers/initPayloadInt.js
edit '' 'import type { Payload } from '"'"'payload'"'"';
import path from '"'"'path'"'"';
import { fileURLToPath } from '"'"'url'"'"';

export async function initPayloadInt(dirname: string): Promise<{ payload: Payload }> {
  const configPath = path.resolve(dirname, '"'"'./config.ts'"'"');
  const config = await import(configPath);

  const payload = await config.default.init({});

  return { payload };
}'

