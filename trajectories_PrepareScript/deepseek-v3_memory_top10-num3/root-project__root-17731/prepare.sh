ls -la
ls -la .github/workflows
open ".github/workflows/root-ci.yml"
open "CMakeLists.txt"
open "requirements.txt"
apt-get update && apt-get install -y gcc g++ cmake make doxygen qt5-doctools lcov pandoc clang fortran zlib1g-dev ccache python3 python3-pip python3-venv git curl wget tar gzip libssl-dev libncurses-dev libreadline-dev libx11-dev libxpm-dev libxft-dev libxext-dev libxml2-dev libgsl-dev libfftw3-dev libgraphviz-dev libtbb-dev libpcre3-dev libgl2ps-dev libsqlite3-dev libmysqlclient-dev libpq-dev libldap2-dev libkrb5-dev libgif-dev libjpeg-dev libpng-dev libtiff-dev libfreetype6-dev libafterimage-dev libgfal2-dev libdavix-dev libxrootd-client-dev libxmlsec1-dev libcfitsio-dev libhdf5-dev libboost-all-dev libeigen3-dev libnlopt-dev libopenblas-dev liblapack-dev libblas-dev libgmp-dev libmpfr-dev libquadmath-dev libgfortran5 libglu1-mesa-dev libglew-dev libftgl-dev libglfw3-dev libxmu-dev libxi-dev libosmesa6-dev libcurl4-openssl-dev libunwind-dev libdw-dev libiberty-dev libbfd-dev libopencv-dev libvdt-dev libtensorflow-dev libonnxruntime-dev
pip install --upgrade pip && pip install -r requirements.txt
apt-get install -y python3-pip
pip install --upgrade pip && pip install -r requirements.txt
mkdir -p build && cd build && cmake ..
apt-get install -y cmake
cd build && cmake ..
mkdir -p build && cd build && cmake ..
cd /testbed && mkdir -p build && cd build && cmake ..
apt-get install -y libx11-dev libxpm-dev libxft-dev libxext-dev
cd /testbed && mkdir -p build && cd build && cmake ..
apt-get install -y libssl-dev libxml2-dev libsqlite3-dev libcfitsio-dev libxrootd-dev
cd /testbed && mkdir -p build && cd build && cmake ..
cd /testbed/build && make -j$(nproc)
cd /testbed && find . -name "*test*" -type f
open ".github/workflows/root-ci.yml"
goto 400
goto 500
goto 550
open ".github/workflows/root-ci-config/build_root.py"
find . -name "CMakeLists.txt" -o -name "Makefile"
open "CMakeLists.txt"
find . -name "*test*" -type d
ls -la test
open "test/Makefile"
cd test && make stress
find ../build -name "root-config"
export PATH=../build/bin:$PATH && make stress
./stress
