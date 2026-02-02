ls -la
ls -la .github/workflows
open ".github/workflows/linux_builds.yml"
open "pyproject.toml"
find . -name "requirements.txt"
apt-get update && apt-get install -y mesa-vulkan-drivers libwayland-bin p7zip-full unzip binutils emscripten gcc make libssl-dev python3-dev python3-pip vulkan-sdk dotnet-sdk-8.0
apt-get install -y vulkan-tools
wget https://packages.microsoft.com/config/ubuntu/22.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb && dpkg -i packages-microsoft-prod.deb && rm packages-microsoft-prod.deb && apt-get update && apt-get install -y dotnet-sdk-8.0
apt-get install -y wget
wget https://packages.microsoft.com/config/ubuntu/22.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb && dpkg -i packages-microsoft-prod.deb && rm packages-microsoft-prod.deb && apt-get update && apt-get install -y dotnet-sdk-8.0
gcc --version && make --version && python3 --version && pip --version && dotnet --version
apt-get install -y build-essential
gcc --version && make --version && python3 --version && pip --version && dotnet --version
apt-get install -y python3-pip
pip --version
pip install scons
scons --version
open "README.md"
open "CONTRIBUTING.md"
grep -A 10 "build:" .github/workflows/linux_builds.yml
open ".github/workflows/linux_builds.yml"
scons dev_mode=yes module_text_server_fb_enabled=yes target=editor
apt-get install -y pkg-config
scons dev_mode=yes module_text_server_fb_enabled=yes target=editor platform=x11
./bin/godot.linuxbsd.editor.x86_64 --version
grep -A 10 "test:" .github/workflows/linux_builds.yml
./bin/godot.linuxbsd.editor.x86_64 --test
