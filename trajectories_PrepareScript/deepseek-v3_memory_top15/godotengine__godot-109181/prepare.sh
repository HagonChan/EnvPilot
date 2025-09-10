ls -la
ls -la .github/workflows
open ".github/workflows/linux_builds.yml"
open "README.md"
open "pyproject.toml"
apt-get update && apt-get install -y python3-dev build-essential python3-pip mesa-vulkan-drivers libwayland-bin 7za unzip strip chmod lipo emcc gcc make libssl-dev python3-dev python3-pip vulkan-sdk dotnet-sdk-8.0
apt-get install -y python3-dev build-essential python3-pip mesa-vulkan-drivers libwayland-bin unzip gcc make libssl-dev python3-dev python3-pip dotnet-sdk-8.0
pip install scons
python3 --version
apt-get install -y python3.8 python3.8-dev python3.8-venv
apt-get update && apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev git
git clone https://github.com/pyenv/pyenv.git ~/.pyenv && echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc && echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc && echo 'eval "$(pyenv init --path)"' >> ~/.bashrc && export PYENV_ROOT="$HOME/.pyenv" && export PATH="$PYENV_ROOT/bin:$PATH" && eval "$(pyenv init --path)"
pyenv install 3.8.0
pyenv global 3.8.0 && python --version
python -m venv .venv && source .venv/bin/activate
pip install scons
pip install --upgrade pip
scons --help
scons platform=linuxbsd target=editor arch=x86_64 vulkan=yes opengl3=yes -j$(nproc)
bin/godot.linuxbsd.editor.x86_64 --test
scons platform=linuxbsd target=editor arch=x86_64 vulkan=yes opengl3=yes tests=yes -j$(nproc)
bin/godot.linuxbsd.editor.x86_64 --test
deactivate
