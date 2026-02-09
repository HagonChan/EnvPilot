ls -la
ls -la .github/workflows
open ".github/workflows/linux_builds.yml"
open "README.md"
open "pyproject.toml"
open "SConstruct"
apt-get update && apt-get install -y python3.8 python3-dev build-essential gcc make libssl-dev python3-pip vulkan-sdk dotnet-sdk-8.0 mesa-vulkan-drivers libwayland-bin 7za unzip strip lipo emcc
apt-get update && apt-get install -y python3 python3-dev build-essential gcc make libssl-dev python3-pip dotnet-sdk-8.0 mesa-vulkan-drivers libwayland-bin unzip
pip install scons
python3 --version && scons --version
python3 -m venv venv
apt-get install -y python3.10-venv
python3 -m venv venv
source venv/bin/activate && pip install -e .
open "pyproject.toml"
source venv/bin/activate && scons platform=linux
apt-get install -y pkg-config
source venv/bin/activate && scons platform=linuxbsd
ls -la tests
open "tests/create_test.py"
open "tests/test_main.cpp"
open "SConstruct"
source venv/bin/activate && bin/godot.linuxbsd.editor.x86_64 --test
source venv/bin/activate && scons platform=linuxbsd tests=yes
source venv/bin/activate && bin/godot.linuxbsd.editor.x86_64 --test
