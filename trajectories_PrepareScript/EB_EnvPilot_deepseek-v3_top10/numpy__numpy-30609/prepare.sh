ls -la
ls -la .github/workflows
open ".github/workflows/linux.yml"
ls -la requirements
open "requirements/build_requirements.txt"
open "requirements/test_requirements.txt"
apt-get update && apt-get install -y gcc g++ gfortran python3-dev build-essential libblas-dev liblapack-dev
uv pip install -r requirements/build_requirements.txt -r requirements/test_requirements.txt
pip install uv
apt-get install -y python3-pip
pip install uv
pip install -r requirements/build_requirements.txt -r requirements/test_requirements.txt
pytest
pip install -e .
pip install meson
ls -la
ls -la vendored-meson/meson
git clone https://github.com/mesonbuild/meson.git vendored-meson/meson
pip install -e .
open "meson_cpu/x86/meson.build"
find . -name "features.py" -o -name "features.*"
open "pyproject.toml"
open "meson.build"
pip show meson-python
pip install -e .
