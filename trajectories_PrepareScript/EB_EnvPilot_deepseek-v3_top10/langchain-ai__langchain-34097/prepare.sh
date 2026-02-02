ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/_test.yml"
open "pyproject.toml"
find_file pyproject.toml
open "libs/core/pyproject.toml"
find_file Makefile
open "libs/core/Makefile"
apt-get update && apt-get install -y python3.12 python3.12-venv python3.12-dev
apt-get update && apt-get install -y python3.10 python3.10-venv python3.10-dev
python3.10 -m venv venv
source venv/bin/activate && uv sync --group test --dev
source venv/bin/activate && pip install uv
source venv/bin/activate && pip --default-timeout=1000 install uv
source venv/bin/activate && uv sync --group test --dev
cd /testbed/libs/core/ && source ../../venv/bin/activate && uv sync --group test --dev
source ../../venv/bin/activate && make test
apt-get update && apt-get install -y build-essential
source ../../venv/bin/activate && make test
