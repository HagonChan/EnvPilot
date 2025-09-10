ls
open "README.md"
open "pyproject.toml"
ls -a .github/workflows/
open ".github/workflows/linux_builds.yml"
open "SConstruct"
apt-get update && apt-get install -y gcc make libssl-dev python3-dev python3-pip vulkan-sdk dotnet-sdk-8.0
wget -qO- https://packages.lunarg.com/lunarg-signing-key-pub.asc | apt-key add - && wget -qO /etc/apt/sources.list.d/lunarg-vulkan-jammy.list https://packages.lunarg.com/vulkan/lunarg-vulkan-jammy.list && apt-get update && apt-get install -y vulkan-sdk
apt-get install -y wget gnupg
wget -qO- https://packages.lunarg.com/lunarg-signing-key-pub.asc | apt-key add - && wget -qO /etc/apt/sources.list.d/lunarg-vulkan-jammy.list https://packages.lunarg.com/vulkan/lunarg-vulkan-jammy.list && apt-get update && apt-get install -y vulkan-sdk
apt-get install -y dotnet-sdk-8.0
pip install scons
apt-get install -y python3-pip
pip install scons
scons dev_mode=yes
apt-get install -y pkg-config
scons platform=linuxbsd dev_mode=yes
ls bin
ls tests
open "tests/README.md"
grep -r "test" README.md
./bin/godot.linuxbsd.editor.x86_64 --help
./bin/godot.linuxbsd.editor.x86_64 --test
