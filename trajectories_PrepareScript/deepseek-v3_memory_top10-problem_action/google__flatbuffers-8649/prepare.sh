ls
open "README.md"
apt-get update && apt-get install -y g++ cmake make
cmake -G "Unix Makefiles"
make -j
./flattests
