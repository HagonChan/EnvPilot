ls -la
ls -la .github/workflows
open ".github/workflows/linux_builds.yml"
open "README.md"
open "pyproject.toml"
open "SConstruct"
apt-get update && apt-get install -y mesa-vulkan-drivers libwayland-bin 7za unzip strip chmod lipo emcc gcc make libssl-dev python3-dev python3-pip vulkan-sdk dotnet-sdk-8.0
apt-get install -y p7zip-full binutils
which strip chmod lipo
wget -qO- https://packages.lunarg.com/lunarg-signing-key-pub.asc | apt-key add - && wget -qO /etc/apt/sources.list.d/lunarg-vulkan-jammy.list https://packages.lunarg.com/vulkan/lunarg-vulkan-jammy.list && apt update && apt install -y vulkan-sdk
apt-get install -y wget gnupg
wget -qO- https://packages.lunarg.com/lunarg-signing-key-pub.asc | apt-key add - && wget -qO /etc/apt/sources.list.d/lunarg-vulkan-jammy.list https://packages.lunarg.com/vulkan/lunarg-vulkan-jammy.list && apt update && apt install -y vulkan-sdk
vulkaninfo
pip install scons
apt-get install -y python3-pip
pip3 install scons
pip3 install --default-timeout=1000 scons
pip3 cache purge && pip3 install --default-timeout=1000 scons
pip3 install --default-timeout=1000 --no-cache-dir scons
scons --version
scons
apt-get install -y pkg-config
scons platform=linux
bin/godot.linuxbsd.editor.x86_64
bin/godot.linuxbsd.editor.x86_64 --headless
find . -name "*test*" -o -name "*Test*" -o -name "*TEST*"
search_file test SConstruct
scons platform=linux tests=yes
ls -la bin
search_file test .github/workflows/linux_builds.yml
bin/godot.linuxbsd.editor.x86_64 --headless --test --force-colors
