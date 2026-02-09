
ls -R
open "README.md"
apt-get update && apt-get install -y git cmake doxygen valgrind
mkdir json-c-build
cd json-c-build
cmake ../
make
valgrind ./tests/test1Formatted
