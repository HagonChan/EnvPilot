ls -la
find_file '*.yml' .github/workflows
open ".github/workflows/root-ci.yml"
search_file cmake .github/workflows/root-ci.yml
search_file make .github/workflows/root-ci.yml
search_file test .github/workflows/root-ci.yml
goto 577
open "README.md"
open "CMakeLists.txt"
sudo apt-get update && sudo apt-get install -y git cmake g++ gcc make libx11-dev libxpm-dev libxft-dev libxext-dev python3-dev libssl-dev libffi-dev libxml2-dev libgsl-dev libsqlite3-dev libmysqlclient-dev libpq-dev libpcre3-dev zlib1g-dev libbz2-dev liblzma-dev libcfitsio-dev libgif-dev libtiff-dev libpng-dev libjpeg-dev libfreetype6-dev libgl2ps-dev libgraphviz-dev libxxhash-dev libzmq3-dev libnlopt-dev libnlopt-cxx-dev libhdf5-dev libfftw3-dev libgmp-dev libmpfr-dev libboost-all-dev libeigen3-dev libtbb-dev libopenmpi-dev libopenblas-dev liblapack-dev libblas-dev libarmadillo-dev libnlopt-dev libnlopt-cxx-dev libcfitsio-dev libgsl-dev libsqlite3-dev libmysqlclient-dev libpq-dev libpcre3-dev zlib1g-dev libbz2-dev liblzma-dev libgif-dev libtiff-dev libpng-dev libjpeg-dev libfreetype6-dev libgl2ps-dev libgraphviz-dev libxxhash-dev libzmq3-dev libnlopt-dev libnlopt-cxx-dev libhdf5-dev libfftw3-dev libgmp-dev libmpfr-dev libboost-all-dev libeigen3-dev libtbb-dev libopenmpi-dev libopenblas-dev liblapack-dev libblas-dev libarmadillo-dev
apt-get update && apt-get install -y git cmake g++ gcc make libx11-dev libxpm-dev libxft-dev libxext-dev python3-dev libssl-dev libffi-dev libxml2-dev libgsl-dev libsqlite3-dev libmysqlclient-dev libpq-dev libpcre3-dev zlib1g-dev libbz2-dev liblzma-dev libcfitsio-dev libgif-dev libtiff-dev libpng-dev libjpeg-dev libfreetype6-dev libgl2ps-dev libgraphviz-dev libxxhash-dev libzmq3-dev libnlopt-dev libnlopt-cxx-dev libhdf5-dev libfftw3-dev libgmp-dev libmpfr-dev libboost-all-dev libeigen3-dev libtbb-dev libopenmpi-dev libopenblas-dev liblapack-dev libblas-dev libarmadillo-dev
mkdir -p build && cd build && cmake ..
make -j$(nproc)
make -j$(nproc)
ls -la test
ctest
./test/stress
ls -la ../bin
ls -la bin
ls -la test
open "test/CMakeLists.txt"
cd .. && cmake -Dtesting=ON -B build && cd build && make -j$(nproc)
cd .. && cmake -Dtesting=ON -Dbuiltin_gtest=OFF -B build && cd build && make -j$(nproc)
ls -la test
./test/stress
./test/stressHistogram

