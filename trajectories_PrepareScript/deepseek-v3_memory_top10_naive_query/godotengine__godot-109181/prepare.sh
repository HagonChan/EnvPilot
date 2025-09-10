ls -la
ls -la .github/workflows
open ".github/workflows/linux_builds.yml"
open "README.md"
open "pyproject.toml"
apt-get update && apt-get install -y mesa-vulkan-drivers libwayland-bin 7za unzip strip chmod lipo emcc gcc make libssl-dev python3-dev python3-pip vulkan-sdk dotnet-sdk-8.0
apt-get install -y mesa-vulkan-drivers libwayland-bin unzip gcc make libssl-dev python3-dev python3-pip dotnet-sdk-8.0
pip install scons
scons
apt-get install -y pkg-config
scons platform=linuxbsd
ls -la bin
ls -la | grep -i test
ls -la tests
ls -la | grep -i makefile
open "tests/SCsub"
scons platform=linuxbsd tests=yes
./bin/godot.linuxbsd.editor.x86_64 --help
./bin/godot.linuxbsd.editor.x86_64 --test
