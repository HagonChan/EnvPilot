ls -la
ls -la .github/workflows
open ".github/workflows/test.yaml"
open "package.json"
yarn install
yarn build
yarn test
