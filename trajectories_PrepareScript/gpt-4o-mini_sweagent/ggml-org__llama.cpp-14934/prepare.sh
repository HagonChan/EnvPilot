find_file '*.yml' .
open ".github/workflows/build.yml"
open ".github/workflows/python-check-requirements.yml"
python3 --version
apt update && apt install -y python3.11 python3.11-venv python3.11-dev
apt install -y python3.11-distutils && curl -sS https://bootstrap.pypa.io/get-pip.py | python3.11
apt install -y curl
curl -sS https://bootstrap.pypa.io/get-pip.py | python3.11
find_file check-requirements.sh .
bash scripts/check-requirements.sh
mkdir build && cd build && cmake ..
apt install -y cmake
mkdir build && cd build && cmake .. && make
rm -rf build/build && cd build && cmake .. && make
cd .. && rm -rf build && mkdir build && cd build && cmake .. && make
ls -la
pwd
cd .. && ls -la
open ".github/workflows/python-check-requirements.yml"
open ".github/workflows/build.yml"
cd .. && ls -la
mkdir build && cd build && cmake .. && make
cd build && cmake .. && make
apt install -y build-essential
cd build && cmake .. && make
apt install -y libcurl4-openssl-dev
cd build && cmake .. && make
cd .. && cd build && cmake .. && make
open "CMakeLists.txt"
cd .. && ls -la
ls -la src
cd src && make
ls -la tests
ls -la Testing
ls -la CMakeFiles
open "src/Makefile"
ls -la bin
ls -la src
cd .. && ls -la
ls -la tests
cd tests && make
cd bin && ./test-tokenizer-0 && ./test-sampling && ./test-grammar-parser && ./test-grammar-integration && ./test-backend-ops && ./test-model-load-cancel && ./test-autorelease && ./test-barrier && ./test-quantize-fns && ./test-quantize-perf && ./test-rope && ./test-mtmd-c-api && ./test-c
cd ../bin && ./test-tokenizer-0 && ./test-sampling && ./test-grammar-parser && ./test-grammar-integration && ./test-backend-ops && ./test-model-load-cancel && ./test-autorelease && ./test-barrier && ./test-quantize-fns && ./test-quantize-perf && ./test-rope && ./test-mtmd-c-api && ./test-c
ls -la
ls -la tests
./test-tokenizer-0
insert 'word1
word2
word3
' 0
insert 'This is a sample input text.
' 0
./test-tokenizer-0 vocab.txt input.txt

