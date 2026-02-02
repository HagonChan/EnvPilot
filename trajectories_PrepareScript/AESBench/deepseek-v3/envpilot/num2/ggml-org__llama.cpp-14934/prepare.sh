ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
open "README.md"
open "docs/build.md"
apt-get update && apt-get install -y build-essential cmake ninja-build libcurl4-openssl-dev
cmake -B build
cmake --build build --config Release
cd build && ctest --output-on-failure
