find_file '.github/workflows/*.yml'
find_file .gitlab-ci.yml
find_file .circleci/config.yml
find_file Makefile
open "/testbed/Makefile"
apt-get update && apt-get install -y llvm-14.0 clang lld clang-tools-extra libpng-dev libjpeg-turbo-dev gcc g++ python3 git build-essential pkg-config cmake make ninja
apt-get update && apt-get install -y llvm-14 clang lld clang-tools-14 libpng-dev libjpeg-dev gcc g++ python3 git build-essential pkg-config cmake make ninja-build
git clone https://github.com/microsoft/vcpkg.git && cd vcpkg && ./bootstrap-vcpkg.sh
apt-get install -y curl zip unzip tar
./bootstrap-vcpkg.sh

