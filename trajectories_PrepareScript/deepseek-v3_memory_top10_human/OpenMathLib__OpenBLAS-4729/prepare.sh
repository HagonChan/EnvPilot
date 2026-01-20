ls -la
ls -la .github/workflows
open ".github/workflows/dynamic_arch.yml"
apt-get update && apt-get install -y gfortran cmake ccache libtinfo5
open "CMakeLists.txt"
mkdir build && cd build
cmake -DDYNAMIC_ARCH=ON ..
make -j$(nproc)
make test
make install
