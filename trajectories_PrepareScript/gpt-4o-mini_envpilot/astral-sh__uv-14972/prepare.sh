ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
goto 1000
apt-get update
apt-get install -y python3.12 python3.12-dev python3.12-distutils
apt-get install -y python3.9 python3.9-dev python3.9-distutils
apt-get install -y python3.11 python3.11-dev python3.11-distutils
apt-get install -y libsasl2-dev libldap2-dev libkrb5-dev gcc python3 python3-pip python3-venv musl-tools perl-core openssl libssl-dev pkg-config libatomic glibc-devel.i686 libstdc++-devel.i686
apt-get install -y libsasl2-dev libldap2-dev libkrb5-dev gcc python3 python3-pip python3-venv musl-tools openssl libssl-dev pkg-config
apt-get install -y perl libatomic1 libc6-dev libstdc++-11-dev
python3.11 -m venv venv
apt-get install -y python3.11-venv
python3.11 -m venv venv
venv/bin/pip install uv
venv/bin/pytest
venv/bin/pip install pytest
venv/bin/pytest
venv/bin/pip install built_by_uv keyring httpx
ls -la scripts/packages/built-by-uv
venv/bin/pip install maturin
cd scripts/packages/built-by-uv && maturin develop
venv/bin/maturin develop
maturin develop
python3.11 -m maturin develop
venv/bin/pip install maturin
cd /testbed
venv/bin/pip install maturin
cd scripts/packages/built-by-uv && venv/bin/maturin develop
python3.11 -m maturin develop
cd /testbed && venv/bin/pip install maturin
./venv/bin/maturin develop
apt-get install -y rustc cargo
cd scripts/packages/built-by-uv && venv/bin/maturin develop
python3.11 -m maturin develop
venv/bin/pip install maturin
rm -rf venv && python3.11 -m venv venv
venv/bin/pip install maturin pytest
cd scripts/packages/built-by-uv && venv/bin/maturin develop
ls -la scripts/packages
ls -la
venv/bin/maturin develop
python3.11 -m maturin develop
rm -rf venv && python3.11 -m venv venv
venv/bin/pip install maturin pytest
cd scripts/packages/built-by-uv && venv/bin/maturin develop
ls -la scripts
ls -la
venv/bin/maturin develop

