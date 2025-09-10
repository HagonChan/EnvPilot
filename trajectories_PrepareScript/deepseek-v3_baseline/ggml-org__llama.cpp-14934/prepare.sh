ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
search_file ubuntu .github/workflows/build.yml
goto 201
sudo apt-get update && sudo apt-get install -y build-essential libcurl4-openssl-dev
apt-get update && apt-get install -y build-essential libcurl4-openssl-dev
cmake -B build -DLLAMA_FATAL_WARNINGS=ON -DGGML_RPC=ON && cmake --build build --config Release -j $(nproc)
apt-get install -y cmake
cmake -B build -DLLAMA_FATAL_WARNINGS=ON -DGGML_RPC=ON && cmake --build build --config Release -j $(nproc)
cd build && ctest -L "main|curl" --output-on-failure
ctest -V -R test-tokenizers-ggml-vocabs
ctest -V -R test-tokenizers-ggml-vocabs
ls -la /testbed/models/ggml-vocabs
file /testbed/models/ggml-vocabs/PLaMo2/ggml-vocab-plamo2.gguf
head -c 4 /testbed/models/ggml-vocabs/PLaMo2/ggml-vocab-plamo2.gguf | hexdump -C
xxd -l 4 /testbed/models/ggml-vocabs/PLaMo2/ggml-vocab-plamo2.gguf
ctest -E "test-tokenizers-ggml-vocabs" --output-on-failure
