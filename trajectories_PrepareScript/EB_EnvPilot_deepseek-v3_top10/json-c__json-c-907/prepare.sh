ls
open "README.md"
apt-get update && apt-get install -y gcc cmake doxygen valgrind
mkdir json-c-build && cd json-c-build && cmake ..
make
make test
