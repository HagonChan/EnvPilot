ls -la
ls -la .github/workflows
open ".github/workflows/unit-tests.yaml"
apt-get update && apt-get install -y flex bison cmake libyaml-dev libssl-dev build-essential gcc g++
open "README.md"
cd build && cmake .. && make
ls -la ci/scripts
../bin/fluent-bit -i cpu -o stdout -f 1
ls -la ../bin
ls -la
ls -la bin

