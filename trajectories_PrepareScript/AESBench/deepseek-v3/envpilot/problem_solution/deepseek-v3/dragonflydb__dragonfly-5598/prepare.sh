ls -la
find_file '*.yml' .github/workflows
open ".github/workflows/ci.yml"
open "README.md"
open "docs/build-from-source.md"
sudo apt update && sudo apt install -y ninja-build libunwind-dev libboost-context-dev libssl-dev autoconf-archive libtool cmake g++ bison zlib1g-dev
apt update && apt install -y ninja-build libunwind-dev libboost-context-dev libssl-dev autoconf-archive libtool cmake g++ bison zlib1g-dev
./helio/blaze.sh -release
ls -la
ls -la helio
open "Makefile"
make configure
git submodule status
git submodule update --init --recursive
make configure
make build
make build
cat build-release/third_party/src/hdr_histogram_project-stamp/hdr_histogram_project-download-*.log
git clone https://github.com/HdrHistogram/HdrHistogram.git build-release/third_party/src/hdr_histogram_project && cd build-release/third_party/src/hdr_histogram_project && git checkout 652d51bcc36744fd1a6debfeb1a8a5f58b14022c
find_file CMakeLists.txt build-release/third_party
cd /testbed
open "CMakeLists.txt"
find_file '*.cmake' third_party
find_file '*.cmake' helio
open "helio/cmake/third_party.cmake"
search_file hdr_histogram_project helio/cmake/third_party.cmake
cat build-release/third_party/src/hdr_histogram_project-stamp/hdr_histogram_project-download-*.log
git ls-remote --tags https://github.com/HdrHistogram/HdrHistogram.git
find_file '*.cmake' .
search_file hdr_histogram helio/cmake/third_party.cmake
search_file hdr_histogram helio/cmake/internal.cmake
open "Makefile"
make build
mkdir -p build-release/third_party/src/hdr_histogram_project && git clone https://github.com/HdrHistogram/HdrHistogram.git build-release/third_party/src/hdr_histogram_project && cd build-release/third_party/src/hdr_histogram_project && git checkout HdrHistogram-2.2.2
rm -rf build-release/third_party/src/hdr_histogram_project && mkdir -p build-release/third_party/src/hdr_histogram_project && git clone https://github.com/HdrHistogram/HdrHistogram.git build-release/third_party/src/hdr_histogram_project && cd build-release/third_party/src/hdr_histogram_project && git checkout HdrHistogram-2.2.2
cd /testbed && make build
find_file '*.cmake' build-release/third_party
open "build-release/third_party/src/hdr_histogram_project-stamp/hdr_histogram_project-download-Release.cmake"
edit '/usr/bin/cmake;-P;/testbed/build-release/third_party/tmp/hdr_histogram_project-gitclone.cmake' '/usr/bin/cmake;-E;echo;"Skipping download: hdr_histogram_project already exists."'
cd /testbed && make build
open "build-release/third_party/src/hdr_histogram_project-stamp/hdr_histogram_project-configure-Release.cmake"
edit '/usr/bin/cmake;-DCMAKE_ARCHIVE_OUTPUT_DIRECTORY:PATH=/testbed/build-release/third_party/libs/hdr_histogram/lib;-DCMAKE_LIBRARY_OUTPUT_DIRECTORY:PATH=/testbed/build-release/third_party/libs/hdr_histogram/lib;-DCMAKE_BUILD_TYPE:STRING=Release;-DCMAKE_CXX_COMPILER:STRING=/usr/bin/c++;-DBUILD_TESTING=OFF;-DCMAKE_C_FLAGS:STRING=-O3;-DCMAKE_CXX_FLAGS=-std=c++17 -O3 -DNDEBUG -fPIC -fno-stack-protector     -fno-stack-clash-protection;-DCMAKE_INSTALL_PREFIX:PATH=/testbed/build-release/third_party/libs/hdr_histogram;-DHDR_LOG_REQUIRED=OFF;-DHDR_HISTOGRAM_BUILD_PROGRAMS=OFF
;-DHDR_HISTOGRAM_INSTALL_SHARED=OFF;-GUnix Makefiles;/testbed/build-release/third_party/hdr_histogram' '/usr/bin/cmake;-E;echo;"Skipping configuration: hdr_histogram_project already configured."'
cd /testbed && make build
open "build-release/third_party/src/hdr_histogram_project-stamp/hdr_histogram_project-build-Release.cmake"
edit 'make;-j4' '/usr/bin/cmake;-E;echo;"Skipping build: hdr_histogram_project already built."'
cd /testbed && make build
open "build-release/third_party/src/hdr_histogram_project-stamp/hdr_histogram_project-install-Release.cmake"
edit 'make;install' '/usr/bin/cmake;-E;echo;"Skipping install: hdr_histogram_project already installed."'
cd /testbed && make build

