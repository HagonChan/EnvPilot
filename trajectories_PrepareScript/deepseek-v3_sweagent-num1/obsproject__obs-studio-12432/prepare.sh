ls -la
ls -la .github/workflows
open ".github/workflows/build-project.yaml"
open ".github/workflows/push.yaml"
open "README.rst"
open "CMakeLists.txt"
ls -la setup.py requirements.txt
ls -la Makefile
ls -la tox.ini
ls -la test
open "test/CMakeLists.txt"
ls -la test/cmocka
open "test/cmocka/CMakeLists.txt"
cmake --version
apt-get update && apt-get install -y cmake
cmake --version
mkdir -p build && cd build
cmake -DBUILD_TESTS=ON -DENABLE_UNIT_TESTS=ON ..
apt-get remove -y cmake
apt-get update && apt-get install -y apt-transport-https ca-certificates gnupg software-properties-common wget && wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | gpg --dearmor - | tee /usr/share/keyrings/kitware-archive-keyring.gpg >/dev/null && echo 'deb [signed-by=/usr/share/keyrings/kitware-archive-keyring.gpg] https://apt.kitware.com/ubuntu/ jammy main' | tee /etc/apt/sources.list.d/kitware.list >/dev/null && apt-get update && apt-get install -y cmake
wget https://github.com/Kitware/CMake/releases/download/v3.28.0/cmake-3.28.0-linux-x86_64.tar.gz
cmake -DBUILD_TESTS=ON -DENABLE_UNIT_TESTS=ON ..
apt-get install -y cmake
cmake --version
cmake -DBUILD_TESTS=ON -DENABLE_UNIT_TESTS=ON ..

wget https://github.com/Kitware/CMake/releases/download/v3.28.0/cmake-3.28.0.tar.gz && tar -xzf cmake-3.28.0.tar.gz && cd cmake-3.28.0 && ./bootstrap && make && make install
cmake -DBUILD_TESTS=ON -DENABLE_UNIT_TESTS=ON ..
create build_issue_summary.txt
insert 'Issue Summary:
1. The project requires CMake 3.28 or higher for building and testing.
2. The current environment has CMake 3.22.1 installed, which does not meet the requirement.
3. Attempts to upgrade CMake to version 3.28 failed due to network restrictions (SSL connection issues).
4. The build process cannot proceed without the required CMake version.

Next Steps:
- Report this issue to the repository maintainers.
- Explore alternative methods to install CMake 3.28 or higher, such as manual compilation from source if network restrictions are lifted.'

