ls -la
ls -la .github/workflows
open ".github/workflows/linux_builds.yml"
open "README.md"
open "pyproject.toml"
apt-get update && apt-get install -y scons build-essential git python3-dev libx11-dev libxcursor-dev libxinerama-dev libgl1-mesa-dev libglu-dev libasound2-dev libpulse-dev libudev-dev libxi-dev libxrandr-dev yasm
scons dev_mode=yes module_text_server_fb_enabled=yes
bin/godot.linuxbsd.editor.x86_64
apt-get install -y libxkbcommon-x11-0 libx11-xcb-dev libxrandr-dev libxinerama-dev libxcursor-dev libxi-dev
bin/godot.linuxbsd.editor.x86_64
open ".github/workflows/linux_builds.yml"
bin/godot.linuxbsd.editor.x86_64 --headless --quit --test
