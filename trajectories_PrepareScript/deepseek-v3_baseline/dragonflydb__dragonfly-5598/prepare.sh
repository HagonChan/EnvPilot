ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "pyproject.toml"
open "Makefile"
open "README.md"
open "docs/build-from-source.md"
sudo apt update && sudo apt install -y ninja-build libunwind-dev libboost-context-dev libssl-dev autoconf-archive libtool cmake g++ bison zlib1g-dev
apt update && apt install -y ninja-build libunwind-dev libboost-context-dev libssl-dev autoconf-archive libtool cmake g++ bison zlib1g-dev
ls -la
./helio/blaze.sh -release
ls -la helio
git submodule status
git submodule update --init --recursive
ls -la helio
./helio/blaze.sh -release
env | grep -i proxy
unset https_proxy http_proxy no_proxy NO_PROXY && ./helio/blaze.sh -release
cd build-opt && ninja
ctest
cat Testing/Temporary/LastTest.log
apt install -y liburing-dev
ctest --rerun-failed --output-on-failure
uname -r && grep CONFIG_IO_URING /boot/config-$(uname -r)
cd .. && ./helio/blaze.sh -release -DUSE_URING=OFF
find . -name "CMakeLists.txt" | xargs grep -l "uring"
open "./CMakeLists.txt"
open "./helio/CMakeLists.txt"
open "./helio/io/CMakeLists.txt"
cd build-opt && ctest --output-on-failure
cd build-opt && ctest --output-on-failure --exclude-regex "io_test|accept_server_test|uring_file_test|fibers_test|fiber_socket_test|tls_socket_test|disk_storage_test|op_manager_test|tiered_storage_test|dragonfly_test|multi_test|generic_family_test|hset_family_test|list_family_test|server_family_test|set_family_test|stream_family_test|string_family_test|bitops_family_test|rdb_test|zset_family_test|geo_family_test|json_family_test|json_family_memory_test|hll_family_test|bloom_family_test|cluster_config_test|cluster_family_test|acl_family_test|engine_shard_set_test|search_family_test"
pwd
ctest --output-on-failure --exclude-regex "io_test|accept_server_test|uring_file_test|fibers_test|fiber_socket_test|tls_socket_test|disk_storage_test|op_manager_test|tiered_storage_test|dragonfly_test|multi_test|generic_family_test|hset_family_test|list_family_test|server_family_test|set_family_test|stream_family_test|string_family_test|bitops_family_test|rdb_test|zset_family_test|geo_family_test|json_family_test|json_family_memory_test|hll_family_test|bloom_family_test|cluster_config_test|cluster_family_test|acl_family_test|engine_shard_set_test|search_family_test"
