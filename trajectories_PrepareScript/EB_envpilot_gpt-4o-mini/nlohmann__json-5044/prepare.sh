
find_file CMakeLists.txt
open "/testbed/CMakeLists.txt"
apt-get update && apt-get install -y clang cmake make
apt-get install -y gcc g++ valgrind lcov python3 git
apt-get install -y llvm-dev
cmake .. -DCMAKE_BUILD_TYPE=Release -DBUILD_TESTING=ON
cmake . -DCMAKE_BUILD_TYPE=Release -DBUILD_TESTING=ON
cmake --build .
ctest
open "/testbed/Testing/Temporary/LastTest.log"
find_file 'download_test_data_project-download-*.log' /testbed/tests/download_test_data_project-prefix/src/download_test_data_project-stamp/
open "/testbed/tests/download_test_data_project-prefix/src/download_test_data_project-stamp/download_test_data_project-download-err.log"
wget https://github.com/nlohmann/json_test_data/archive/refs/tags/v3.1.0.zip -O /testbed/tests/json_test_data.zip
curl -L -o /testbed/tests/json_test_data.zip https://github.com/nlohmann/json_test_data/archive/refs/tags/v3.1.0.zip
create download_test_data.py

