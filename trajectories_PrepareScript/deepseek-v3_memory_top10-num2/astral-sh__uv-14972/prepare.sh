ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
goto 100
goto 200
apt-get update && apt-get install -y libsasl2-dev libldap2-dev libkrb5-dev gcc python3 python3-pip python3-venv musl-tools perl-core openssl openssl-devel pkgconfig libatomic glibc-devel.i686 libstdc++-devel.i686 libssl-dev pkg-config gcc-powerpc64-linux-gnu libffi-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev liblzma-dev
apt-get update && apt-get install -y libsasl2-dev libldap2-dev libkrb5-dev gcc python3 python3-pip python3-venv musl-tools openssl pkg-config libssl-dev gcc-powerpc64-linux-gnu libffi-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev liblzma-dev
apt-get install -y python3.12 python3.12-venv && curl -LsSf https://astral.sh/uv/install.sh | sh
add-apt-repository ppa:deadsnakes/ppa -y && apt-get update && apt-get install -y python3.12 python3.12-venv
apt-get install -y software-properties-common
add-apt-repository ppa:deadsnakes/ppa -y && apt-get update && apt-get install -y python3.12 python3.12-venv
curl -LsSf https://astral.sh/uv/install.sh | sh
apt-get install -y curl
curl -LsSf https://astral.sh/uv/install.sh | sh
source $HOME/.local/bin/env
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env
python3.12 -m venv .venv
source .venv/bin/activate && uv pip install -e .
pytest
uv pip install pytest
pytest
uv pip install httpx keyring
uv pip install -e .
pytest
ls -la scripts/packages/built-by-uv
ls -la scripts/packages/built-by-uv/src
export PYTHONPATH=$PYTHONPATH:/testbed/scripts/packages/built-by-uv/src && pytest
