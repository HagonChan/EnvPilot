ls -la
ls -la .github/workflows
open ".github/workflows/ci.yaml"
open ".github/workflows/build.yaml"
open ".github/workflows/check.yaml"
sudo apt-get update && sudo apt-get install --no-install-recommends -y python3 python3-pip cmake clang-format-15 gcc-12 g++-12 pkg-config libgtk-4-dev libwebkit2gtk-5.0-dev
apt-get update && apt-get install --no-install-recommends -y python3 python3-pip cmake clang-format-15 gcc-12 g++-12 pkg-config libgtk-4-dev libwebkit2gtk-5.0-dev
apt-get install --no-install-recommends -y python3 python3-pip cmake clang-format-15 gcc-12 g++-12 pkg-config libgtk-4-dev libwebkit2gtk-5.0-dev
apt-get install --no-install-recommends -y python3 python3-pip cmake clang-format-15 gcc-12 g++-12 pkg-config libgtk-4-dev libwebkit2gtk-6.0-dev
apt-cache search libwebkit2gtk
apt-get install --no-install-recommends -y python3 python3-pip cmake clang-format-15 gcc-12 g++-12 pkg-config libgtk-4-dev libwebkit2gtk-4.1-dev
python3 --version && cmake --version && gcc --version && g++ --version && clang-format-15 --version
ls -la
mkdir -p build && cd build && cmake ..
make
./core/tests/webview_core_unit_tests
./core/tests/webview_core_functional_tests
cat ../.github/workflows/check.yaml
apt-get install --no-install-recommends -y xvfb
xvfb-run ./core/tests/webview_core_functional_tests
