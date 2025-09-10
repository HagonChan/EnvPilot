ls -la
ls -la .github/workflows
open ".github/workflows/root-ci.yml"
search_file cmake .github/workflows/root-ci.yml
scroll_down
open ".github/workflows/root-ci-config/build_root.py"
search_file cmake .github/workflows/root-ci-config/build_root.py
open "CMakeLists.txt"
apt-get update && apt-get install -y doxygen qt5-doctools lcov pandoc awscli gcc make libssl-dev
apt-get install -y doxygen lcov pandoc awscli gcc make libssl-dev
cmake --version || apt-get install -y cmake
cmake --version
mkdir -p build && cd build
cmake -DBUILD_TESTING=ON ..
apt-get install -y g++
cmake -DBUILD_TESTING=ON ..
apt-get install -y libx11-dev libxpm-dev libxft-dev libxext-dev
cmake -DBUILD_TESTING=ON ..
make -j$(nproc)
ctest --output-on-failure
search_file BUILD_TESTING CMakeLists.txt
search_file BUILD_TESTING ../CMakeLists.txt
ls -la ../test
ls -la ../test/stress
ls -la
ls -la test
cmake -DBUILD_TESTING=ON -DROOT_BUILD_TESTS=ON .. && make -j$(nproc)
ls -la test
ls -la bin
cmake -DBUILD_TESTING=ON -DROOT_BUILD_TESTS=ON .. && make -j$(nproc)
ls -la test
make -j$(nproc) test
ls -la bin
search_file add_test ../CMakeLists.txt
cd ../test
g++ -o stress stress.cxx `root-config --cflags --libs`
apt-get install -y root-system
wget -qO- https://root.cern/install-root-prerequisites | bash
apt-get install -y wget
wget -qO- https://root.cern/install-root-prerequisites | bash
wget https://root.cern/download/root_v6.26.10.Linux-ubuntu22-x86_64-gcc11.2.tar.gz && tar -xzf root_v6.26.10.Linux-ubuntu22-x86_64-gcc11.2.tar.gz -C /usr/local/
wget https://root.cern/install-root -O install-root.sh && chmod +x install-root.sh && ./install-root.sh
which root || echo "ROOT not installed"
ls -la /usr/include/root || ls -la /usr/local/include/root
open "stress.cxx"

ls -la /usr/include/root || ls -la /usr/local/include/root
ls -la ../include/Event.h || ls -la Event.h
g++ -o stress stress.cxx -I. -I../include -L../lib -lCore -lCint -lHist -lGraf -lGraf3d -lGpad -lTree -lRint -lPostscript -lMatrix -lPhysics -lMathCore -lThread -lRIO -lNet -lHistPainter -lGrafPainter -lTreePlayer -lTreeViewer -lXMLIO -lProof -lProofPlayer -lProofDraw -lProofBench -lProofPlayer -lProofDraw -lProofBench -lRHTTP -lROOTNTuple -lROOTVecOps -lROOTDataFrame -lROOTHistDraw -lROOTHistPainter -lROOTTreePlayer -lROOTTreeViewer -lROOTXMLIO -lROOTProof -lROOTProofPlayer -lROOTProofDraw -lROOTProofBench -lROOTRHTTP -lROOTNTuple -lROOTVecOps -lROOTDataFrame

