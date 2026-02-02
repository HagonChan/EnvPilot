ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
open ".github/workflows/generic.yml"
open "INSTALL.md"
open "README.md"
open "CMakeLists.txt"
apt-get update && apt-get install -y build-essential cmake pkg-config libasound2-dev libpulse-dev libaudio-dev libx11-dev libxext-dev libxrandr-dev libxcursor-dev libxi-dev libxinerama-dev libxxf86vm-dev libxss-dev libgl1-mesa-dev libesd0-dev libdbus-1-dev libudev-dev libibus-1.0-dev fcitx-libs-dev
apt-get install -y build-essential cmake pkg-config libasound2-dev libpulse-dev libaudio-dev libx11-dev libxext-dev libxrandr-dev libxcursor-dev libxi-dev libxinerama-dev libxxf86vm-dev libxss-dev libgl1-mesa-dev libdbus-1-dev libudev-dev libibus-1.0-dev fcitx-libs-dev
mkdir build && cd build
cmake ..
make
make test
make help
find .. -name "*test*" -type f
ls -la ../test
gcc ../test/testatomic.c -o testatomic -I../include -L. -lSDL3
gcc ../test/testatomic.c -o testatomic -I../include -L. -lSDL3 -lSDL3_test
./testatomic
export LD_LIBRARY_PATH=.:$LD_LIBRARY_PATH
./testatomic
