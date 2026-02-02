ls -la
ls -la .github/workflows
open ".github/workflows/ci.yaml"
open ".github/workflows/build.yaml"
open ".github/actions/setup-env/action.yml"
open ".github/workflows/check.yaml"
sudo apt-get update && sudo apt-get install -y gcc-12 g++-12 clang-15 clang++-15 clang-tidy-15 llvm-cov-15 gcov mingw-w64 xvfb-run libgtk-4-dev libwebkitgtk-6.0-dev libgtk-3-dev libwebkit2gtk-4.1-dev libwebkit2gtk-4.0-dev python3 python3-lxml python3-markupsafe python3-pip pkg-config doxygen graphviz swig
apt-get update && apt-get install -y gcc-12 g++-12 clang-15 clang++-15 clang-tidy-15 llvm-cov-15 gcov mingw-w64 xvfb-run libgtk-4-dev libwebkitgtk-6.0-dev libgtk-3-dev libwebkit2gtk-4.1-dev libwebkit2gtk-4.0-dev python3 python3-lxml python3-markupsafe python3-pip pkg-config doxygen graphviz swig
apt-get update && apt-get install -y gcc-12 g++-12 clang-15 clang++-15 clang-tidy-15 mingw-w64 libgtk-4-dev libwebkitgtk-6.0-dev libgtk-3-dev libwebkit2gtk-4.1-dev libwebkit2gtk-4.0-dev python3 python3-lxml python3-markupsafe python3-pip pkg-config doxygen graphviz swig
apt-get install -y llvm-15 xvfb
which gcov
apt-get install -y cmake ninja-build
gcc-12 --version && g++-12 --version && clang-15 --version && clang++-15 --version && cmake --version && ninja --version
mkdir -p build && cd build && cmake ..
ninja
cmake -G Ninja ..
cd .. && rm -rf build && mkdir -p build && cd build && cmake -G Ninja ..
ninja
ctest
ctest --rerun-failed --output-on-failure
xvfb-run ctest
