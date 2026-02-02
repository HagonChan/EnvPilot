ls
open "azure-pipelines.yml"
open "pyproject.toml"
apt-get update && apt-get install -y python3.11 python3.11-venv python3.11-dev
python3.11 -m venv .venv
. .venv/bin/activate && python -m pip install --upgrade pip
. .venv/bin/activate && python -m pip install meson-python cython
. .venv/bin/activate && python -m pip install meson-python cython
. .venv/bin/activate && python -m pip install pytest pytest-cov ruff mypy
. .venv/bin/activate && python -m pip install --no-deps -e .
apt-get install -y build-essential
. .venv/bin/activate && python -m pip install --no-deps -e .
rm -rf .venv
python3.11 -m venv .venv
. .venv/bin/activate && python -m pip install --upgrade pip
. .venv/bin/activate && python -m pip install meson-python cython
. .venv/bin/activate && python -m pip install pytest pytest-cov ruff mypy
. .venv/bin/activate && python -m pip install --no-deps -e .
rm -rf .venv
python3.11 -m venv .venv
. .venv/bin/activate && python -m pip install --upgrade pip
. .venv/bin/activate && python -m pip install meson-python cython
. .venv/bin/activate && python -m pip install pytest pytest-cov ruff mypy
. .venv/bin/activate && python -m pip install --no-deps -e .
rm -rf .venv
python3.11 -m venv .venv
. .venv/bin/activate && python -m pip install --upgrade pip
. .venv/bin/activate && python -m pip install meson-python cython
. .venv/bin/activate && python -m pip install pytest pytest-cov ruff mypy
. .venv/bin/activate && python -m pip install --no-deps -e .
rm -rf .venv
python3.11 -m venv .venv
. .venv/bin/activate && python -m pip install --upgrade pip
. .venv/bin/activate && python -m pip install meson-python cython
. .venv/bin/activate && python -m pip install pytest pytest-cov ruff mypy
. .venv/bin/activate && python -m pip install --no-deps -e .
rm -rf .venv
python3.11 -m venv .venv
. .venv/bin/activate && python -m pip install --upgrade pip
. .venv/bin/activate && python -m pip install meson-python cython
. .venv/bin/activate && python -m pip install pytest pytest-cov ruff mypy
. .venv/bin/activate && python -m pip install --no-deps -e .
rm -rf .venv
python3.11 -m venv .venv
. .venv/bin/activate && python -m pip install --upgrade pip
. .venv/bin/activate && python -m pip install meson-python cython
. .venv/bin/activate && python -m pip install pytest pytest-cov ruff mypy

