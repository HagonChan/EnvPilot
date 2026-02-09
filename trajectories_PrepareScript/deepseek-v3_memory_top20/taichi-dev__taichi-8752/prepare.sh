ls
open "README.md"
open "setup.py"
open "requirements_dev.txt"
open "requirements_test.txt"
ls ci
ls ci/build-images
ls ci/scripts
open "ci/scripts/release_test.sh"
apt-get update && apt-get install -y clang-tidy-10 libx11-dev libxrandr-dev libxinerama-dev libxcursor-dev libxi-dev zlib1g-dev libglew-dev libglfw3-dev gcc make libssl-dev
apt-get install -y clang-tidy libx11-dev libxrandr-dev libxinerama-dev libxcursor-dev libxi-dev zlib1g-dev libglew-dev libglfw3-dev gcc make libssl-dev
apt-get install -y cmake build-essential
apt-get install -y python3-pip && pip install --upgrade pip
pip install -r requirements_dev.txt
pip install -r requirements_test.txt
python setup.py build
python3 setup.py build
apt-get install -y llvm-dev
apt-get clean
apt-get install -y llvm-dev
df -h
du -sh /* | sort -rh | head -n 10
du -sh /usr/* | sort -rh | head -n 10
du -sh /usr/lib/* | sort -rh | head -n 10
apt-get clean
du -sh /var/log/* | sort -rh | head -n 10
ls -lh /tmp
rm -rf /usr/lib/python3.10
apt-get install -y llvm-dev
rm -rf /usr/lib/python3.8
apt-get install -y llvm-dev
