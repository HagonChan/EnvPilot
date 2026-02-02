ls -la
ls -la .github/workflows
open ".github/workflows/_test.yml"
ls -la
ls -la libs
open "libs/Makefile"
ls -la libs/core
open "libs/core/pyproject.toml"
open "libs/core/Makefile"
which uv
pip install uv
python -m pip install uv
apt update && apt install -y python3 python3-pip
python3 -m pip install uv
python3 -m venv venv && source venv/bin/activate
apt install -y python3.10-venv
python3 -m venv venv && source venv/bin/activate
cd libs/core && uv sync --group test --dev
make test
deactivate
