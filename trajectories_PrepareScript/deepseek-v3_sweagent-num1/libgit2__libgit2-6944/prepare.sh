ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
open "CMakeLists.txt"
open "README.md"
sudo apt-get update && sudo apt-get install -y cmake python3 gcc
apt-get update && apt-get install -y cmake python3 gcc
mkdir -p build && cd build
cmake ..
cmake --build .
ctest
cat Testing/Temporary/LastTest.log
cat Testing/Temporary/LastTestsFailed.log
cat Testing/Temporary/LastTest_1.log
cat Testing/Temporary/CTestOutput.log
ctest -R offline
ctest -R online
