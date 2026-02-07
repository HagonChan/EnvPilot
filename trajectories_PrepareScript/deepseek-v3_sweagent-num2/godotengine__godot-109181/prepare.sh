ls -la
ls -la .github/workflows
open ".github/workflows/linux_builds.yml"
open "README.md"
open "CONTRIBUTING.md"
open "pyproject.toml"
open "setup.py"
open "requirements.txt"
ls -la | grep -i makefile
ls -la | grep -i sconstruct
open "SConstruct"
ls -la misc/
python3 --version
apt-get update && apt-get install -y python3.8 scons
apt-cache policy python3
apt-get install -y python3 scons
python3 --version && scons --version
grep -i "requires" SConstruct
grep -i "test" SConstruct
scons tests=yes
apt-get install -y pkg-config
scons platform=linuxbsd tests=yes
apt-get install -y build-essential
scons platform=linuxbsd tests=yes
ls -la bin/
./bin/godot.linuxbsd.editor.x86_64 --test
