ls -la
ls -la .github/workflows
open ".github/workflows/root-ci.yml"
search_file apt-get .github/workflows/root-ci.yml
open ".travis.yml"
open "README.md"
apt-get update && apt-get install -y gcc g++ cmake make libssl-dev libyaml-dev
mkdir build && cd build
cmake ..
apt-get install -y libx11-dev libxpm-dev libxft-dev libxext-dev
cmake ..
apt-get install -y python3-dev python3-pip
cmake ..
make -j$(nproc)
ls -la ../test
ctest
search_file test README.md
g++ -o stress ../test/stress.cxx $(root-config --libs --cflags) && ./stress
source ../build/bin/thisroot.sh
g++ -o stress ../test/stress.cxx $(root-config --libs --cflags) && ./stress
ls -la ../test
g++ -o stress ../test/stress.cxx ../test/Event.cxx $(root-config --libs --cflags) && ./stress
ls -la ../test/*LinkDef.h
mkdir -p dict && cd dict
rootcling -f EventDict.cxx -c ../test/Event.h ../test/EventLinkDef.h
g++ -o stress ../test/stress.cxx ../test/Event.cxx EventDict.cxx $(root-config --libs --cflags) && ./stress
