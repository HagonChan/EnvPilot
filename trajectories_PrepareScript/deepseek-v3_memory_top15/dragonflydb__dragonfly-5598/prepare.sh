ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
apt-get update && apt-get install -y build-essential cmake ninja-build gcc clang libicu-dev libidn11-dev libvips42 ffmpeg imagemagick libpam-dev zstd bison autoconf libtool libssl-dev
mkdir -p build && cd build
cmake -G Ninja ..
git submodule update --init --recursive
git submodule update --init --recursive
cmake -G Ninja ..
export GIT_SSL_NO_VERIFY=1 && cmake -G Ninja ..
apt-get install -y libboost-all-dev
cmake -G Ninja ..
cmake -G Ninja -DCMAKE_BUILD_TYPE=Release ..
ninja
ninja
mkdir -p third_party/src/aws_project
git clone https://github.com/aws/aws-sdk-cpp.git third_party/src/aws_project
ninja
apt-get install -y libunwind-dev
ninja
ctest
ctest --rerun-failed --output-on-failure
grep -r "io_uring" ../
grep -r "USE_IO_URING" ../
grep -r "epoll" ../
FLAGS_force_epoll=true ctest --output-on-failure
FLAGS_force_epoll=true ctest --output-on-failure -E "io_test|accept_server_test|uring_file_test|fibers_test|fiber_socket_test|tls_socket_test|disk_storage_test|op_manager_test"
FLAGS_force_epoll=true ctest -R dragonfly_test --output-on-failure
FLAGS_force_epoll=true ctest --output-on-failure
