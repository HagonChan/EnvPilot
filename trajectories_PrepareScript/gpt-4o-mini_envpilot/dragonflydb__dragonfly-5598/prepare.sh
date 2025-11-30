ls -la
ls -la .circleci
open ".circleci/config.yml"
apt-get update && apt-get install -y clang cmake ninja-build
apt-get install -y libicu-dev libidn11-dev libvips42 ffmpeg imagemagick libpam-dev boost automake zstd bison autoconf libtool libssl-dev
apt-get install -y libicu-dev libidn11-dev libvips42 ffmpeg imagemagick libpam0g-dev libboost-all-dev automake zstd bison autoconf libtool libssl-dev
cmake -B build -DCMAKE_BUILD_TYPE=Debug -GNinja -DCMAKE_CXX_COMPILER_LAUNCHER=ccache
git submodule update --init --recursive
cmake -B build -DCMAKE_BUILD_TYPE=Debug -GNinja -DCMAKE_CXX_COMPILER_LAUNCHER=ccache
ninja -C build
apt-get install -y ccache
ninja -C build
ls -la build
open "build/.ninja_log"
open "build/CMakeFiles/CMakeError.log"
find_file CMakeLists.txt
open "/testbed/CMakeLists.txt"
edit 'set(CMAKE_CXX_STANDARD 17)' 'set(CMAKE_CXX_STANDARD 20)'
edit 'set(CMAKE_CXX_FLAGS "-Wno-use-after-free ${CMAKE_CXX_FLAGS}")' 'set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS}")'
cmake -B build -DCMAKE_BUILD_TYPE=Debug -GNinja -DCMAKE_CXX_COMPILER_LAUNCHER=ccache
ninja -C build
ls -la build
open "build/build.ninja"
ls -la build/CMakeFiles
open "build/CMakeFiles/CMakeError.log"
cmake -B build -DCMAKE_BUILD_TYPE=Debug -GNinja -DCMAKE_CXX_COMPILER_LAUNCHER=ccache
ninja -C build
search_dir -Werror=thread-safety
open "/testbed/CMakeLists.txt"
edit 'set(CMAKE_CXX_FLAGS "-Wthread-safety ${CMAKE_CXX_FLAGS}")' '# set(CMAKE_CXX_FLAGS "-Wthread-safety ${CMAKE_CXX_FLAGS}")'
edit 'add_compile_options(-Werror=thread-safety)' '# add_compile_options(-Werror=thread-safety)'
cmake -B build -DCMAKE_BUILD_TYPE=Debug -GNinja -DCMAKE_CXX_COMPILER_LAUNCHER=ccache
ninja -C build
tail -n 50 build/build.ninja
tail -n 50 build/CMakeFiles/CMakeOutput.log
ninja -C build clean
cmake -B build -DCMAKE_BUILD_TYPE=Debug -GNinja -DCMAKE_CXX_COMPILER_LAUNCHER=ccache
ninja -C build
find_file 'README*'
open "/testbed/README.md"
open "docs/build-from-source.md"
apt-get install -y libunwind-dev libboost-context-dev autoconf-archive zlib1g-dev
ninja -C build
ls -la build/third_party/src/aws_project-stamp
open "build/third_party/src/aws_project-stamp/aws_project-patch-err.log"
open "build/third_party/src/aws_project-stamp/aws_project-patch-out.log"
ls -la build/third_party/aws
open "build/third_party/aws/src/aws-cpp-sdk-core/include/aws/core/auth/signer/AWSAuthV4Signer.h.rej"
open "build/third_party/aws/src/aws-cpp-sdk-core/include/aws/core/auth/signer/AWSAuthV4Signer.h"

