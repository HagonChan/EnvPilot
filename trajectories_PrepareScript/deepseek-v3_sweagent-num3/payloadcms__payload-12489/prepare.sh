ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
search_file test .github/workflows/main.yml
curl -fsSL https://deb.nodesource.com/setup_23.x | bash -
apt-get update && apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_23.x | bash -
apt install nodejs -y
node --version
npm install -g pnpm@9.7.1
pnpm --version
pnpm install
pnpm install
apt-get install -y libvips-dev
pnpm install
curl -L https://github.com/lovell/sharp-libvips/releases/download/v8.12.1/libvips-8.12.1-linux-x64.tar.gz -o libvips-8.12.1-linux-x64.tar.gz
curl -L https://github.com/lovell/sharp-libvips/releases/download/v8.12.1/libvips-8.12.1-linux-x64.tar.gz -o libvips-8.12.1-linux-x64.tar.gz
tar -xzf libvips-8.12.1-linux-x64.tar.gz
mv libvips-8.12.1-linux-x64 /usr/local/lib
ls -la
tar -tf libvips-8.12.1-linux-x64.tar.gz
tar -xzf libvips-8.12.1-linux-x64.tar.gz -C /usr/local
ls -la /usr/local/lib/libvips*
pnpm install
pnpm test:unit
git --version
pnpm test:e2e:prod:ci
pnpm test:types
pnpm install
ls -la test/node_modules/payload
pnpm run build
pnpm test:types
open "./test/types/tsconfig.json"
open "./test/tsconfig.json"
ls -la packages/payload/dist/exports
edit '"paths": {
      "@payload-config": ["./_community/config.ts"]
    }' '"paths": {
      "@payload-config": ["./_community/config.ts"],
      "payload": ["packages/payload/dist/exports/node"]
    }' False
pnpm test:types
open "./test/types/types.spec.ts"
open "./test/types/tsconfig.json"
pnpm test:types --project ./test/types/tsconfig.json
pnpm tstyche --help
pnpm test:types --tsconfig ./test/types/tsconfig.json
edit 'import type {
  BulkOperationResult,
  JoinQuery,
  PaginatedDocs,
  SelectType,
  TypeWithVersion,
  Where,
} from '"'"'payload'"'"'

import payload from '"'"'payload'"'"'' 'import type {
  BulkOperationResult,
  JoinQuery,
  PaginatedDocs,
  SelectType,
  TypeWithVersion,
  Where,
} from '"'"'../../packages/payload/dist/exports/node'"'"'

import payload from '"'"'../../packages/payload/dist/exports/node'"'"'' False
edit 'import type {
  BulkOperationResult,
  JoinQuery,
  PaginatedDocs,
  SelectType,
  TypeWithVersion,
  Where,
} from '"'"'payload'"'"'

import payload from '"'"'payload'"'"'' 'import type {
  BulkOperationResult,
  JoinQuery,
  PaginatedDocs,
  SelectType,
  TypeWithVersion,
  Where,
} from '"'"'../../packages/payload/dist/exports/node'"'"'

import payload from '"'"'../../packages/payload/dist/exports/node'"'"'' False
open "./test/types/types.spec.ts"
edit 'import type {
  BulkOperationResult,
  JoinQuery,
  PaginatedDocs,
  SelectType,
  TypeWithVersion,
  Where,
} from '"'"'payload'"'"'

import payload from '"'"'payload'"'"'' 'import type {
  BulkOperationResult,
  JoinQuery,
  PaginatedDocs,
  SelectType,
  TypeWithVersion,
  Where,
} from '"'"'../../packages/payload/dist/exports/node'"'"'

import payload from '"'"'../../packages/payload/dist/exports/node'"'"'' False
pnpm test:types
edit 'import type {
  BulkOperationResult,
  JoinQuery,
  PaginatedDocs,
  SelectType,
  TypeWithVersion,
  Where,
} from '"'"'../../packages/payload/dist/exports/node'"'"'

import payload from '"'"'../../packages/payload/dist/exports/node'"'"'' 'import type {
  BulkOperationResult,
  JoinQuery,
  PaginatedDocs,
  SelectType,
  TypeWithVersion,
  Where,
} from '"'"'../../packages/payload/dist/exports/node.js'"'"'

import payload from '"'"'../../packages/payload/dist/exports/node.js'"'"'' False
pnpm test:types

