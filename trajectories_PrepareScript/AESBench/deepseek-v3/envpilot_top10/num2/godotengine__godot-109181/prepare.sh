ls -la
ls -la .github/workflows
open ".github/workflows/linux_builds.yml"
open "README.md"
open "pyproject.toml"
apt-get update && apt-get install -y python3-dev build-essential python3-pip gcc make libssl-dev vulkan-sdk dotnet-sdk-8.0
wget -qO- https://packages.lunarg.com/lunarg-signing-key-pub.asc | apt-key add - && wget -qO- https://packages.lunarg.com/lunarg-vulkan-1.3.261-jammy.list > /etc/apt/sources.list.d/lunarg-vulkan-1.3.261-jammy.list && apt-get update && apt-get install -y vulkan-sdk
apt-get install -y wget gnupg
wget -qO- https://packages.lunarg.com/lunarg-signing-key-pub.asc | apt-key add - && wget -qO- https://packages.lunarg.com/lunarg-vulkan-1.3.261-jammy.list > /etc/apt/sources.list.d/lunarg-vulkan-1.3.261-jammy.list && apt-get update && apt-get install -y vulkan-sdk
apt-get install -y vulkan-sdk
cat /etc/apt/sources.list.d/lunarg-vulkan-1.3.261-jammy.list
echo "deb https://packages.lunarg.com/vulkan/1.3.261 jammy main" > /etc/apt/sources.list.d/lunarg-vulkan-1.3.261-jammy.list && apt-get update && apt-get install -y vulkan-sdk
apt-get install -y mesa-vulkan-drivers libwayland-bin 7za unzip strip chmod lipo emcc
apt-get install -y mesa-vulkan-drivers libwayland-bin p7zip-full binutils unzip
pip install scons
apt-get install -y python3-pip
pip install scons
open "SConstruct"
scons target=editor
apt-get install -y pkg-config
scons platform=linuxbsd target=editor
scons platform=linuxbsd target=editor test=yes
bin/godot.linuxbsd.editor.x86_64 --test
scons platform=linuxbsd target=editor tests=yes
bin/godot.linuxbsd.editor.x86_64 --test
