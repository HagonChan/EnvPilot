find_file '*.yml' .
open "/testbed/.github/workflows/presubmit.yml"
open "/testbed/.github/workflows/pip.yml"
scroll_down
find_file '*requirements*.txt' .
open "/testbed/requirements.txt"
apt update
apt install -y build cmake ninja python3-pip && pip3 install -r requirements.txt
apt install -y cmake ninja-build python3-pip && pip3 install -r requirements.txt
mkdir build && cd build
cmake ..
apt install -y llvm-17 llvm-17-dev
apt-cache search llvm | grep llvm
apt install -y llvm-15 llvm-15-dev
cmake ..
apt install -y liblld-dev
apt-add-repository ppa:llvm/llvm-15 && apt update
echo "deb http://apt.llvm.org/jammy/ llvm-toolchain-jammy-15 main" | tee /etc/apt/sources.list.d/llvm.list && apt update
wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add -
curl -fsSL https://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add -
apt list --installed | grep llvm
cmake ..
find /usr/lib/llvm -name "*lld*"
which lld
dpkg -l | grep llvm
find_file 'README*' .
find_file CMakeLists.txt .
find_file Makefile .

find_file setup.py .
find_file '*test*' .
