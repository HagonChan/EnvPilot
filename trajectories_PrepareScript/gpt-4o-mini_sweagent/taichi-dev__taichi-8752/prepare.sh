find_file '*.yml' .
open ".github/workflows/testing.yml"
scroll_down
find_file '*requirements*.txt' .
open "requirements_test.txt"
open "requirements_dev.txt"
apt-get update
apt-get install -y cmake colorama coverage python3-pip python3-dev python3-setuptools python3-wheel python3-numpy python3-scipy python3-matplotlib python3-requests python3-pillow python3-pytest python3-psutil python3-autograd python3-cffi python3-setproctitle python3-nbmake python3-marko python3-yaml python3-pyevtk python3-wget python3-git python3-pybind11 python3-coverage python3-yapf python3-distro python3-isort python3-pylint python3-twine python3-wheel python3-astunparse python3-pre-commit python3-scikit-build python3-ninja' }
apt-get install -y cmake clang clang-tidy libx11-dev libxrandr-dev libxinerama-dev libxcursor-dev libxi-dev zlib1g-dev libglew-dev libglfw3-dev
pip install -r requirements_test.txt
apt-get install -y python3-pip
pip3 install -r requirements_test.txt
pip3 install -r requirements_dev.txt
bash .github/workflows/scripts/unix_test.sh
apt-get install -y freeglut3-dev libglm-dev libjpeg-dev liblz4-dev libpng-dev libssl-dev libx11-xcb-dev libxcb-dri3-dev libxcb-ewmh-dev libxcb-keysyms1-dev libxcb-randr0-dev libzstd-dev
bash .github/workflows/scripts/unix_test.sh
ls -l dist/
open ".github/workflows/scripts/build.py"
find_file ti_build .
ls -l
open "setup.py"
python3 setup.py bdist_wheel
open "CMakeLists.txt"
python3 setup.py bdist_wheel --verbose
open "README.md"
find_file Makefile .
open "misc/baselines/Makefile"
ls -l _skbuild/
ls -l _skbuild/linux-x86_64-3.10/
ls -l _skbuild/linux-x86_64-3.10/cmake-build/
open "_skbuild/linux-x86_64-3.10/cmake-build/CMakeCache.txt"
scroll_down
ls -l _skbuild/linux-x86_64-3.10/cmake-build/CMakeFiles/
open "_skbuild/linux-x86_64-3.10/cmake-build/CMakeFiles/CMakeConfigureLog.yaml"
ls -l _skbuild/linux-x86_64-3.10/cmake-build/CMakeFiles/
python3 setup.py bdist_wheel
ls -l _skbuild/linux-x86_64-3.10/cmake-build/CMakeFiles/
rm -rf _skbuild
python3 setup.py bdist_wheel
ls -l _skbuild/linux-x86_64-3.10/cmake-build/CMakeFiles/
ls -l _skbuild/linux-x86_64-3.10/cmake-build/CMakeFiles/CMakeScratch/
python3 setup.py bdist_wheel --build-type=Makefile
ls -l _skbuild/linux-x86_64-3.10/cmake-build/CMakeFiles/
open "_skbuild/linux-x86_64-3.10/cmake-build/CMakeFiles/CMakeConfigureLog.yaml"
ls -l _skbuild/linux-x86_64-3.10/cmake-build/CMakeFiles/
python3 setup.py bdist_wheel
ls -l _skbuild/linux-x86_64-3.10/cmake-build/CMakeFiles/
python3 setup.py bdist_wheel
ls -l _skbuild/linux-x86_64-3.10/cmake-build/CMakeFiles/

