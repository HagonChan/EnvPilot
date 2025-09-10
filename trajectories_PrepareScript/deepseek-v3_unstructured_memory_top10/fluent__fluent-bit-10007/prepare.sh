ls -la
ls -la .github/workflows
open ".github/workflows/unit-tests.yaml"
open "README.md"
sudo apt-get update && sudo apt-get install -y build-essential cmake flex bison libyaml-dev libssl-dev
apt-get update && apt-get install -y build-essential cmake flex bison libyaml-dev libssl-dev
mkdir -p build && cd build && cmake ..
make
ls -la ../.github/workflows/run-unit-tests.sh
ls -la ../tests
open "../CMakeLists.txt"
search_file add_test ../CMakeLists.txt
ls -la ../bin
ls -la ../tests
../bin/fluent-bit -i cpu -o stdout -f 1
ls -la
ls -la bin

