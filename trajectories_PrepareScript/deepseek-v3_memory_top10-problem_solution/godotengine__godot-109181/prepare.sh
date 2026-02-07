ls -la
ls -la .github/workflows
open ".github/workflows/linux_builds.yml"
open "README.md"
open "pyproject.toml"
apt-get update
apt-get install -y mesa-vulkan-drivers libwayland-bin gcc make libssl-dev python3-dev python3-pip vulkan-sdk
apt-get install -y vulkan-tools libvulkan-dev
pip install scons
apt-get install -y python3-pip
pip install scons
scons --version
scons dev_mode=yes module_mono_enabled=yes
apt-get install -y pkg-config
scons platform=linuxbsd dev_mode=yes module_mono_enabled=yes
ls -la bin
./bin/godot.linuxbsd.editor.x86_64.mono --test
