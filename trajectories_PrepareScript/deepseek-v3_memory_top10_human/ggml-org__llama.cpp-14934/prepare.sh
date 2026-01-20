ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
open "README.md"
open "docs/build.md"
apt-get update && apt-get install -y build-essential cmake ninja-build tcl libcurl4-openssl-dev mesa-vulkan-drivers vulkan-sdk rocblas-dev hipblas-dev libssl-dev
cmake -B build
apt-get install -y cmake
cmake -B build
apt-get install -y g++
cmake -B build
apt-get install -y libcurl4-openssl-dev
cmake -B build
cmake --build build --config Release
cd build && ctest
ctest --rerun-failed --output-on-failure
ls -la /testbed/models/ggml-vocabs/
ls -la /testbed/models/ggml-vocabs/PLaMo2/
find /testbed -name "*.sh" -o -name "*.py" -o -name "*.md" | grep -i "vocab" || echo "No relevant files found."
open "/testbed/gguf-py/gguf/vocab.py"
search_file vocab README.md
find_file README.md
cd /testbed && find . -name "README.md"
open "./README.md"
search_file vocab docs/build.md
ls -la /testbed/models/ggml-vocabs/
ls -la /testbed/models/ggml-vocabs/PLaMo2/
find /testbed -name "*.sh" -o -name "*.py" | grep -i "vocab" || echo "No relevant files found."
open "/testbed/gguf-py/gguf/vocab.py"
search_file vocab README.md
search_file vocab docs/build.md
find /testbed -name "*.sh" -o -name "*.py" | grep -i "download" || echo "No download scripts found."
