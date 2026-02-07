ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/linux_builds.yml"
open ".github/workflows/static_checks.yml"
open "README.md"
open "pyproject.toml"
ls -la setup.py requirements.txt
ls -la Makefile
ls -la tests
ls -la SConstruct
open "SConstruct"
open ".github/workflows/linux_builds.yml"
open "tests/create_test.py"
open "tests/test_main.cpp"
scons dev_mode=yes module_text_server_fb_enabled=yes target=editor
sudo apt-get update && sudo apt-get install -y scons
apt-get update && apt-get install -y scons
scons dev_mode=yes module_text_server_fb_enabled=yes target=editor
apt-get install -y pkg-config
scons platform=linuxbsd dev_mode=yes module_text_server_fb_enabled=yes target=editor
apt-get install -y libicu-dev
scons platform=linuxbsd dev_mode=yes module_text_server_fb_enabled=yes target=editor
apt-get install -y g++ build-essential
scons platform=linuxbsd dev_mode=yes module_text_server_fb_enabled=yes target=editor
open "tests/test_main.cpp"
bin/godot.linuxbsd.editor.x86_64 --test
