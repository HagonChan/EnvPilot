ls -la
ls -la .github/workflows
open ".github/workflows/root-ci.yml"
goto 200
goto 300
goto 400
goto 500
open ".github/workflows/root-ci-config/build_root.py"
goto 400
apt-get update && apt-get install -y gcc g++ clang clang++ python3 python3-pip git ccache build-essential cmake make libssl-dev zlib1g-dev qt5-doctools lcov pandoc doxygen curl tar gzip wget
pip install awscli==1.36.40 gcovr
apt-get install -y python3-pip
pip3 install awscli==1.36.40 gcovr
mkdir -p build && cd build
cmake ..
which cmake
apt-get install -y cmake
which cmake
cmake ..
apt-get install -y libx11-dev libxpm-dev libxft-dev libxext-dev
cmake ..
apt-get install -y libssl-dev
cmake ..
make -j$(nproc)
ls -la test
make test
open "test/CMakeLists.txt"
ctest -R test-stressinterpreter
./bin/stressInterpreter
ls -la bin
ls -la test
make test
g++ -o test/stressInterpreter test/stressInterpreter.cxx -I../core/base/inc -I../core/meta/inc -I../core/clib/inc -I../core/cont/inc -I../core/foundation/inc -I../core/gui/inc -I../core/math/inc -I../core/rint/inc -I../core/thread/inc -I../core/unix/inc -I../core/winnt/inc -L../lib -lCore -lCint -lRIO -lNet -lHist -lGraf -lGraf3d -lGpad -lTree -lRint -lPostscript -lMatrix -lPhysics -lMathCore -lThread -lMultiProc -lRIO -lNet -lHist -lGraf -lGraf3d -lGpad -lTree -lRint -lPostscript -lMatrix -lPhysics -lMathCore -lThread -lMultiProc
find .. -name RConfigure.h
g++ -o test/stressInterpreter test/stressInterpreter.cxx -I../include -I../ginclude -I../core/base/inc -I../core/meta/inc -I../core/clib/inc -I../core/cont/inc -I../core/foundation/inc -I../core/gui/inc -I../core/math/inc -I../core/rint/inc -I../core/thread/inc -I../core/unix/inc -I../core/winnt/inc -L../lib -lCore -lCint -lRIO -lNet -lHist -lGraf -lGraf3d -lGpad -lTree -lRint -lPostscript -lMatrix -lPhysics -lMathCore -lThread -lMultiProc
ls -la ../include/RConfigure.h
ls -la ../ginclude/RConfigure.h
grep -r "RConfigure.h" ../
cmake ..
cmake -Dfail-on-missing=OFF ..
cmake -Dfail-on-missing=OFF -Dbuiltin_xrootd=OFF ..
cmake -Dfail-on-missing=OFF -Dbuiltin_xrootd=OFF -Dbuiltin_llvm=OFF -Dbuiltin_clang=OFF -Dbuiltin_afterimage=OFF -Dbuiltin_fftw3=OFF -Dbuiltin_freetype=ON -Dbuiltin_lzma=ON -Dbuiltin_zlib=ON ..
cmake -Dfail-on-missing=OFF -Dbuiltin_xrootd=OFF -Dxrootd=OFF ..
apt-get install -y llvm clang
cmake -Dfail-on-missing=OFF -Dbuiltin_xrootd=OFF -Dxrootd=OFF -Dbuiltin_llvm=OFF -Dbuiltin_clang=OFF -Dbuiltin_afterimage=OFF -Dbuiltin_fftw3=OFF -Dbuiltin_freetype=ON -Dbuiltin_lzma=ON -Dbuiltin_zlib=ON ..
apt-get install -y llvm-18 clang-18
wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add -
apt-get install -y wget
wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add -

