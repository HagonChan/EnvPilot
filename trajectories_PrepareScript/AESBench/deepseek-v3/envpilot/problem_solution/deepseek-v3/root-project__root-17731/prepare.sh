ls -la
open ".github/workflows"
ls -la .github/workflows
open ".github/workflows/root-ci.yml"
search_file apt-get .github/workflows/root-ci.yml
search_file apt .github/workflows/root-ci.yml
open "CMakeLists.txt"
search_file find_package CMakeLists.txt
open "README.md"
apt-get update
apt-get install -y g++ cmake make doxygen qhelpgenerator-qt5 lcov pandoc gcc clang fortran zlib1g-dev ccache python3 python3-pip python3-venv git curl wget tar gzip libssl-dev libncurses-dev libreadline-dev libx11-dev libxpm-dev libxft-dev libxext-dev libxml2-dev libgsl-dev libfftw3-dev libgraphviz-dev libtbb-dev libpcre3-dev libgl2ps-dev libsqlite3-dev libmysqlclient-dev libpq-dev libldap2-dev libkrb5-dev libgif-dev libjpeg-dev libpng-dev libtiff-dev libfreetype6-dev libafterimage-dev libgfal2-dev libdavix-dev libxrootd-client-dev libxmlsec1-dev libcfitsio-dev libhdf5-dev libboost-all-dev libeigen3-dev libnlopt-dev libopenblas-dev liblapack-dev libblas-dev libgmp-dev libmpfr-dev libquadmath-dev libgfortran5 libglu1-mesa-dev libglew-dev libftgl-dev libglfw3-dev libxmu-dev libxi-dev libosmesa6-dev libcurl4-openssl-dev libunwind-dev libdw-dev libiberty-dev libbfd-dev libopencv-dev libvdt-dev libtensorflow-dev libonnxruntime-dev libcuda libcudart libcublas libcufft libcurand libcusparse libcusolver libnpp libnvrtc libnvgraph libnvidia-ml libopencl librocm-smi libroctracer librocrand librocblas librocfft librocsolver libhip libhsa-runtime libamdhip64 libamd-comgr libamd-rocclr libamd-rocgdb libamd-rocprofiler libamd-roctracer libamd-rocwmma libamd-rocwarp libamd-rocrand libamd-rocblas libamd-rocfft libamd-rocsolver libamd-rocsparse libamd-rocalution libamd-rocprim
pip install --upgrade pip && pip install awscli==1.36.40
apt-get install -y python3-pip
pip install --upgrade pip && pip install awscli==1.36.40
mkdir build && cd build
cmake ..
apt-get install -y cmake
cmake ..
apt-get install -y libx11-dev libxpm-dev libxft-dev libxext-dev
cmake ..
apt-get install -y libssl-dev
cmake ..
make -j$(nproc)
ls -la ../test
../test/stress
make stress
../test/DrawTest.sh
open "../README.md"
ctest
cmake -Dtesting=ON ..
make -j$(nproc)
ls -la ../bin
ls -la ../lib
cd .. && rm -rf build && mkdir build && cd build && cmake .. && make -j$(nproc)
cmake -Dtesting=OFF -Dbuiltin_clad=OFF ..
make -j$(nproc)
ls -la ../bin
make install
which root
root --version
