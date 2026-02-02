ls -la
ls -la .github/workflows
open ".github/workflows/linux.yml"
sudo apt update && sudo apt install -y python3.12 python3.12-dev python3.12-venv
apt update && apt install -y python3.12 python3.12-dev python3.12-venv
apt list | grep python3
apt install -y python3.11 python3.11-dev python3.11-venv
python3.11 -m venv venv
source venv/bin/activate
ls -la requirements
pip install -r requirements/linter_requirements.txt
pip install -r requirements/test_requirements.txt
ls -la meson.build
mkdir -p build && meson setup build
apt install -y gcc build-essential
meson setup build
open "meson.build"
ls -la meson_cpu
open "meson_cpu/meson.build"
ls -la meson
meson introspect --installed
mkdir -p build && meson setup build
ls -la README*
open "README.md"
ls -la meson_options.txt
open "meson_cpu/x86/meson.build"
find . -name "*features*"
open "meson.build"
ls -la numpy/_build_utils
find . -name "*.py" | xargs grep -l "features"
meson introspect --installed
mkdir -p build && meson setup build
open "meson_cpu/x86/meson.build"
ls -la pyproject.toml setup.py
open "pyproject.toml"
pip show meson-python
pip install meson-python
pip show meson
ls -la meson_cpu
open "meson_cpu/meson.build"
open "meson_cpu/x86/meson.build"
open "meson_cpu/arm/meson.build"
find meson_cpu -name "*features*"
meson introspect --installed
mkdir -p build && meson setup build
find . -name "*features*"
open "numpy/_core/src/common/npy_cpu_features.h"
find meson_cpu -type f | xargs grep -l "mod_features"
ls -la meson_options.txt

