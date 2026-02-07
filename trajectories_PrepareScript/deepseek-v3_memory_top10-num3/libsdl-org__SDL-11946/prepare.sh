ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/build.yml"
open ".github/workflows/generic.yml"
apt-get update && apt-get install -y build-essential cmake gcc g++ make pkg-config libasound2-dev libpulse-dev libaudio-dev libjack-dev libsndio-dev libx11-dev libxext-dev libxrandr-dev libxcursor-dev libxfixes-dev libxi-dev libxss-dev libwayland-dev libxkbcommon-dev libdrm-dev libgbm-dev libgl1-mesa-dev libgles2-mesa-dev libegl1-mesa-dev libdbus-1-dev libibus-1.0-dev libudev-dev libpipewire-0.3-dev
open "INSTALL.md"
mkdir build && cd build
cmake .. -DSDL_TESTS=ON
make
ls test
./test/testmessage
open "README.md"
scroll_down
./test/testkeys
./test/testatomic
