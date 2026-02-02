ls -la
open ".travis.yml"
ls -la .github/workflows
open ".github/workflows/root-ci.yml"
open "requirements.txt"
apt-get update && apt-get install -y gcc g++ clang cmake make python3 python3-pip git ccache build-essential libssl-dev zlib1g-dev
pip install -r requirements.txt
pip install -r requirements.txt
pip install numpy pandas
pip install scikit-learn
pip install tensorflow<2.16
pip install 'tensorflow<2.16'
pip install 'torch<2.5'
pip install awscli==1.36.40 gcovr
ls -la CMakeLists.txt
mkdir build && cd build && cmake ..
apt-get install -y libx11-dev libxpm-dev libxft-dev libxext-dev
cmake ..
make -j$(nproc)
make -j$(nproc)
ls -la test
./test/stress
ls -la bin
ls -la test
ctest
cmake -DENABLE_TESTING=ON ..
make -j$(nproc)
ctest
ls -la bin
ls -la test
g++ -o bin/stress test/stress.cxx -I../core/base/inc -I../core/foundation/inc -I../core/cont/inc -I../core/meta/inc -I../core/clib/inc -I../core/thread/inc -I../core/imt/inc -I../core/zip/inc -I../core/lzma/inc -I../core/lz4/inc -I../core/zstd/inc -I../core/unix/inc -I../core/gui/inc -I../core/textinput/inc -I../core/rint/inc -I../core/clingutils/inc -I../core/multiproc/inc -L../lib -lCore -lRIO -lNet -lHist -lGraf -lGraf3d -lGpad -lTree -lTreePlayer -lRint -lPostscript -lMatrix -lPhysics -lMathCore -lThread -lMultiProc -lImt -lROOTVecOps -lROOTDataFrame -lROOTNTuple -lROOTRDF -lROOTHist -lROOTHistPainter -lROOTGpad -lROOTGraf -lROOTGraf3d -lROOTTree -lROOTTreePlayer -lROOTRint -lROOTPostscript -lROOTMatrix -lROOTPhysics -lROOTMathCore -lROOTThread -lROOTMultiProc -lROOTImt -lROOTVecOps -lROOTDataFrame -lROOTNTuple -lROOTRDF -lROOTHist -lROOTHistPainter -lROOTGpad -lROOTGraf -lROOTGraf3d -lROOTTree -lROOTTreePlayer -lROOTRint -lROOTPostscript -lROOTMatrix -lROOTPhysics -lROOTMathCore -lROOTThread -lROOTMultiProc -lROOTImt
ls -la RConfigure.h
cmake ..
ls -la RConfigure.h
find . -name RConfigure.h
g++ -o bin/stress test/stress.cxx -I../core/base/inc -I../core/foundation/inc -I../core/cont/inc -I../core/meta/inc -I../core/clib/inc -I../core/thread/inc -I../core/imt/inc -I../core/zip/inc -I../core/lzma/inc -I../core/lz4/inc -I../core/zstd/inc -I../core/unix/inc -I../core/gui/inc -I../core/textinput/inc -I../core/rint/inc -I../core/clingutils/inc -I../core/multiproc/inc -I./include -I./ginclude -L../lib -lCore -lRIO -lNet -lHist -lGraf -lGraf3d -lGpad -lTree -lTreePlayer -lRint -lPostscript -lMatrix -lPhysics -lMathCore -lThread -lMultiProc -lImt -lROOTVecOps -lROOTDataFrame -lROOTNTuple -lROOTRDF -lROOTHist -lROOTHistPainter -lROOTGpad -lROOTGraf -lROOTGraf3d -lROOTTree -lROOTTreePlayer -lROOTRint -lROOTPostscript -lROOTMatrix -lROOTPhysics -lROOTMathCore -lROOTThread -lROOTMultiProc -lROOTImt -lROOTVecOps -lROOTDataFrame -lROOTNTuple -lROOTRDF -lROOTHist -lROOTHistPainter -lROOTGpad -lROOTGraf -lROOTGraf3d -lROOTTree -lROOTTreePlayer -lROOTRint -lROOTPostscript -lROOTMatrix -lROOTPhysics -lROOTMathCore -lROOTThread -lROOTMultiProc -lROOTImt
ls -la ../lib
ls -la lib
g++ -o bin/stress test/stress.cxx -I../core/base/inc -I../core/foundation/inc -I../core/cont/inc -I../core/meta/inc -I../core/clib/inc -I../core/thread/inc -I../core/imt/inc -I../core/zip/inc -I../core/lzma/inc -I../core/lz4/inc -I../core/zstd/inc -I../core/unix/inc -I../core/gui/inc -I../core/textinput/inc -I../core/rint/inc -I../core/clingutils/inc -I../core/multiproc/inc -I./include -I./ginclude -L./lib -lCore -lRIO -lNet -lHist -lGraf -lGraf3d -lGpad -lTree -lTreePlayer -lRint -lPostscript -lMatrix -lPhysics -lMathCore -lThread -lMultiProc -lImt -lROOTVecOps -lROOTDataFrame -lROOTNTuple -lROOTRDF -lROOTHist -lROOTHistPainter -lROOTGpad -lROOTGraf -lROOTGraf3d -lROOTTree -lROOTTreePlayer -lROOTRint -lROOTPostscript -lROOTMatrix -lROOTPhysics -lROOTMathCore -lROOTThread -lROOTMultiProc -lROOTImt
ls -la lib/libROOT*.so
g++ -o bin/stress test/stress.cxx -I../core/base/inc -I../core/foundation/inc -I../core/cont/inc -I../core/meta/inc -I../core/clib/inc -I../core/thread/inc -I../core/imt/inc -I../core/zip/inc -I../core/lzma/inc -I../core/lz4/inc -I../core/zstd/inc -I../core/unix/inc -I../core/gui/inc -I../core/textinput/inc -I../core/rint/inc -I../core/clingutils/inc -I../core/multiproc/inc -I./include -I./ginclude -L./lib -lCore -lRIO -lNet -lHist -lGraf -lGraf3d -lGpad -lTree -lTreePlayer -lRint -lPostscript -lMatrix -lPhysics -lMathCore -lThread -lMultiProc -lImt -lROOTVecOps -lROOTDataFrame -lROOTNTuple -lROOTHist -lROOTGpad -lROOTGraf -lROOTGraf3d -lROOTTree -lROOTTreePlayer -lROOTRint -lROOTPostscript -lROOTMatrix -lROOTPhysics -lROOTMathCore -lROOTThread -lROOTMultiProc -lROOTImt
g++ -o bin/stress test/stress.cxx -I../core/base/inc -I../core/foundation/inc -I../core/cont/inc -I../core/meta/inc -I../core/clib/inc -I../core/thread/inc -I../core/imt/inc -I../core/zip/inc -I../core/lzma/inc -I../core/lz4/inc -I../core/zstd/inc -I../core/unix/inc -I../core/gui/inc -I../core/textinput/inc -I../core/rint/inc -I../core/clingutils/inc -I../core/multiproc/inc -I./include -I./ginclude -L./lib -lCore -lRIO -lNet -lHist -lGraf -lGraf3d -lGpad -lTree -lTreePlayer -lRint -lPostscript -lMatrix -lPhysics -lMathCore -lThread -lMultiProc -lImt
find .. -name "Event.*"
g++ -o bin/stress test/stress.cxx test/Event.cxx -I../core/base/inc -I../core/foundation/inc -I../core/cont/inc -I../core/meta/inc -I../core/clib/inc -I../core/thread/inc -I../core/imt/inc -I../core/zip/inc -I../core/lzma/inc -I../core/lz4/inc -I../core/zstd/inc -I../core/unix/inc -I../core/gui/inc -I../core/textinput/inc -I../core/rint/inc -I../core/clingutils/inc -I../core/multiproc/inc -I./include -I./ginclude -L./lib -lCore -lRIO -lNet -lHist -lGraf -lGraf3d -lGpad -lTree -lTreePlayer -lRint -lPostscript -lMatrix -lPhysics -lMathCore -lThread -lMultiProc -lImt
find .. -name "*Dict.cxx"
g++ -o bin/stress test/stress.cxx test/Event.cxx -I../core/base/inc -I../core/foundation/inc -I../core/cont/inc -I../core/meta/inc -I../core/clib/inc -I../core/thread/inc -I../core/imt/inc -I../core/zip/inc -I../core/lzma/inc -I../core/lz4/inc -I../core/zstd/inc -I../core/unix/inc -I../core/gui/inc -I../core/textinput/inc -I../core/rint/inc -I../core/clingutils/inc -I../core/multiproc/inc -I./include -I./ginclude -L./lib -lCore -lRIO -lNet -lHist -lGraf -lGraf3d -lGpad -lTree -lTreePlayer -lRint -lPostscript -lMatrix -lPhysics -lMathCore -lThread -lMultiProc -lImt -lCling -lGraf3d -lGpad -lHist -lHistPainter -lMatrix -lMinuit -lPhysics -lTree -lTreePlayer -lRint -lPostscript -lGraf -lGpad -lHist -lHistPainter -lMatrix -lMinuit -lPhysics -lTree -lTreePlayer -lRint -lPostscript -lGraf -lGpad -lHist -lHistPainter -lMatrix -lMinuit -lPhysics -lTree -lTreePlayer -lRint -lPostscript
g++ -o bin/stress test/stress.cxx test/Event.cxx -I../core/base/inc -I../core/foundation/inc -I../core/cont/inc -I../core/meta/inc -I../core/clib/inc -I../core/thread/inc -I../core/imt/inc -I../core/zip/inc -I../core/lzma/inc -I../core/lz4/inc -I../core/zstd/inc -I../core/unix/inc -I../core/gui/inc -I../core/textinput/inc -I../core/rint/inc -I../core/clingutils/inc -I../core/multiproc/inc -I./include -I./ginclude
g++ -o bin/stress test/stress.cxx test/Event.cxx -I../core/base/inc -I../core/foundation/inc -I../core/cont/inc -I../core/meta/inc -I../core/clib/inc -I../core/thread/inc -I../core/imt/inc -I../core/zip/inc -I../core/lzma/inc -I../core/lz4/inc -I../core/zstd/inc -I../core/unix/inc -I../core/gui/inc -I../core/textinput/inc -I../core/rint/inc -I../core/clingutils/inc -I../core/multiproc/inc -I./include -I./ginclude -L./lib -lCore -lRIO -lNet -lHist -lGraf -lGraf3d -lGpad -lTree -lTreePlayer -lRint -lPostscript -lMatrix -lPhysics -lMathCore -lThread -lMultiProc -lImt -lCling -lGraf3d -lGpad -lHist -lHistPainter -lMatrix -lMinuit -lPhysics -lTree -lTreePlayer -lRint -lPostscript -lGraf -lGpad -lHist -lHistPainter -lMatrix -lMinuit -lPhysics -lTree -lTreePlayer -lRint -lPostscript -lGraf -lGpad -lHist -lHistPainter -lMatrix -lMinuit -lPhysics -lTree -lTreePlayer -lRint -lPostscript
ls -la lib/libEvent*.so lib/libTrack*.so lib/libHistogramManager*.so

