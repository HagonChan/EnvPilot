
ls -R
open "README.md"
apt-get update && apt-get install -y build-essential protobuf-compiler python3 python-is-python3 libprotobuf-dev libcurl4-openssl-dev libncurses5-dev libjemalloc-dev wget m4 g++ libssl-dev
./configure --allow-fetch
make -j4
make install
search_dir test
ls -l
ls -l test
open "test/run"
python3 test/run
ls -l drivers
open "Makefile"
ls -l mk
open "mk/main.mk"
ls -l src
open "src/build.mk"
open "src/README.md"
make -j4
python3 test/run
ls -l drivers
open "Makefile"
open "mk/configure.mk"
ls -l src
open "src/README.md"
make -j4
python3 test/run
ls -l drivers
open "src/README.md"
make -j4
python3 test/run
ls -l drivers
open "src/README.md"
make -j4
python3 test/run
ls -l drivers
open "src/README.md"
make -j4
python3 test/run
ls -l drivers
open "src/README.md"
make -j4
python3 test/run
ls -l drivers
open "src/README.md"
make -j4
python3 test/run
ls -l drivers

