
find_file '*.yml'
open ".github/workflows/linux.yml"
find_file linter_requirements.txt requirements
open "requirements/linter_requirements.txt"
pip install cython-lint ruff==0.14.7 GitPython>=3.1.30
python --version
apt update
apt install -y python3 python3-pip
pip3 install cython-lint ruff==0.14.7 GitPython>=3.1.30
find_file requirements.txt
find_file setup.py
open "/testbed/numpy/_core/tests/examples/cython/setup.py"
pip3 install meson
meson setup build
open "/testbed/build/meson-logs/meson-log.txt"
open ".github/workflows/linux.yml"
meson setup build -Dallow-noblas=true -Dcpu-baseline=none -Dcpu-dispatch=none
find_file '*' .github/meson_actions
open ".github/meson_actions/action.yml"
find_file build_requirements.txt requirements
open "requirements/build_requirements.txt"
pip3 install meson-python>=0.13.1 ninja spin==0.15 build
meson setup build -Dallow-noblas=true -Dcpu-baseline=none -Dcpu-dispatch=none
open "/testbed/build/meson-logs/meson-log.txt"
find_file Makefile
find_file tox.ini
find_file requirements.txt requirements
apt install -y pkg-config
meson setup build -Dallow-noblas=true -Dcpu-baseline=none -Dcpu-dispatch=none
open "/testbed/meson_cpu/x86/meson.build"
find_file requirements.txt
meson --version
apt install -y build-essential
find_file requirements.txt
meson --version
apt install -y libatlas-base-dev
meson setup build -Dallow-noblas=true -Dcpu-baseline=none -Dcpu-dispatch=none
open "/testbed/meson_cpu/x86/meson.build"
find_file Makefile
find_file tox.ini
meson --version
apt install -y libatlas-base-dev
apt install -y libopenblas-dev
meson setup build -Dallow-noblas=true -Dcpu-baseline=none -Dcpu-dispatch=none
open "/testbed/meson_cpu/x86/meson.build"
find_file Makefile
find_file tox.ini
meson --version

