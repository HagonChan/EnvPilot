find_file '*.yml' .github/workflows
open ".github/workflows/test.yml"
find_file requirements.txt
open "python_bindings/requirements.txt"
python3.7 -m venv venv
ls /usr/bin/python*
update-alternatives --display python
apt update
apt install build-essential libssl-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev python-openssl git -y
apt install build-essential libssl-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev git -y
wget https://www.python.org/ftp/python/3.7.9/Python-3.7.9.tgz
tar -xzf Python-3.7.9.tgz
cd Python-3.7.9 && ./configure --enable-optimizations
make -j$(nproc)

