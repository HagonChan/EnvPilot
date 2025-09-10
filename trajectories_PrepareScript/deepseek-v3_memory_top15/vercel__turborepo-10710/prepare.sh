ls -la
open ".github/workflows"
ls -la .github/workflows
open ".github/workflows/turborepo-test.yml"
scroll_down
open ".github/actions/setup-turborepo-environment/action.yml"
open ".github/actions/setup-node/action.yml"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
apt-get update && apt-get install -y curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm install 18.20.2
node --version && npm --version
npm install -g turbo
apt-get update && apt-get install -y graphviz sccache cargo libssl-dev build-essential
cargo install sccache
curl https://sh.rustup.rs -sSf | sh -s -- -y
source $HOME/.cargo/env && cargo install sccache
npm install
turbo run test --filter=turborepo-tests-integration
npm install -g pnpm
turbo run test --filter=turborepo-tests-integration
npm install --save-dev undici-types ts-json-schema-generator
open "packages/turbo-types/tsconfig.json"
npm install --save-dev @turbo/tsconfig
find . -name "tsconfig*" -type f
open "tsconfig.json"
edit '{
  "extends": "@turbo/tsconfig/library.json",
  "compilerOptions": {
    "rootDir": ".",
    "module": "ESNext",
    "lib": ["ESNext"]
  }
}' '{
  "compilerOptions": {
    "rootDir": ".",
    "module": "ESNext",
    "lib": ["ESNext"],
    "strict": true,
    "skipLibCheck": true,
    "forceConsistentCasingInFileNames": true
  }
}'
open "packages/turbo-types/tsconfig.json"
edit '{
  "extends": "@turbo/tsconfig/library.json",
  "compilerOptions": {
    "rootDir": ".",
    "module": "ESNext",
    "lib": ["ESNext"]
  }
}' '{
  "compilerOptions": {
    "rootDir": ".",
    "module": "ESNext",
    "lib": ["ESNext"],
    "target": "ES2018",
    "strict": true,
    "skipLibCheck": true,
    "baseUrl": "./packages"
  }
}'
turbo run test --filter=turborepo-tests-integration
npm ls ts-json-schema-generator
edit '{
  "compilerOptions": {
    "rootDir": ".",
    "module": "ESNext",
    "lib": ["ESNext"],
    "target": "ES2018",
    "strict": true,
    "skipLibCheck": true,
    "baseUrl": "./packages"
  }
}' '{
  "compilerOptions": {
    "rootDir": ".",
    "module": "ESNext",
    "lib": ["ESNext"],
    "target": "ES2018",
    "strict": true,
    "skipLibCheck": true,
    "baseUrl": "./packages",
    "moduleResolution": "node"
  }
}'
ls -la packages/turbo-types/json
mkdir -p packages/turbo-types/json && echo '{}' > packages/turbo-types/json/frameworks.json
turbo run test --filter=turborepo-tests-integration
edit '{
  "compilerOptions": {
    "rootDir": ".",
    "module": "ESNext",
    "lib": ["ESNext"],
    "target": "ES2018",
    "strict": true,
    "skipLibCheck": true,
    "baseUrl": "./packages",
    "moduleResolution": "node"
  }
}' '{
  "compilerOptions": {
    "rootDir": ".",
    "module": "ESNext",
    "lib": ["ESNext"],
    "target": "ES2018",
    "strict": true,
    "skipLibCheck": true,
    "baseUrl": "./packages",
    "moduleResolution": "node",
    "resolveJsonModule": true
  }
}'
turbo run test --filter=turborepo-tests-integration
edit '{
  "compilerOptions": {
    "rootDir": ".",
    "module": "ESNext",
    "lib": ["ESNext"],
    "target": "ES2018",
    "strict": true,
    "skipLibCheck": true,
    "baseUrl": "./packages",
    "moduleResolution": "node",
    "resolveJsonModule": true
  }
}' '{
  "compilerOptions": {
    "rootDir": ".",
    "module": "ESNext",
    "lib": ["ESNext"],
    "target": "ES2018",
    "strict": true,
    "skipLibCheck": true,
    "baseUrl": "./packages",
    "moduleResolution": "node",
    "resolveJsonModule": true,
    "allowSyntheticDefaultImports": true
  }
}'
turbo run test --filter=turborepo-tests-integration
npm install -g tsx
turbo run test --filter=turborepo-tests-integration
npm install -g tsup
turbo run test --filter=turborepo-tests-integration
npm install -g typescript
turbo run test --filter=turborepo-tests-integration
find . -name "tsconfig*" -type f
open "packages/turbo-workspaces/tsconfig.json"
edit '{
  "extends": "@turbo/tsconfig/library.json",
  "compilerOptions": {
    "rootDir": "."
  }
}' '{
  "compilerOptions": {
    "rootDir": ".",
    "module": "ESNext",
    "lib": ["ESNext"],
    "target": "ES2018",
    "strict": true,
    "skipLibCheck": true,
    "moduleResolution": "node",
    "resolveJsonModule": true,
    "allowSyntheticDefaultImports": true
  }
}'
turbo run test --filter=turborepo-tests-integration

