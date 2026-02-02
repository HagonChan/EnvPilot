ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
open "README.md"
find_file docs/build.md
open "CMakeLists.txt"
apt-get update && apt-get install -y build-essential tcl libcurl4-openssl-dev mesa-vulkan-drivers vulkan-sdk rocblas-dev hipblas-dev libcurl-devel gcc g++ libssl-dev
apt-get install -y build-essential tcl libcurl4-openssl-dev mesa-vulkan-drivers gcc g++ libssl-dev
wget -qO- https://packages.lunarg.com/lunarg-signing-key-pub.asc | apt-key add - && wget -qO- https://packages.lunarg.com/lunarg-vulkan-1.3.261-jammy.list > /etc/apt/sources.list.d/vulkan.list && apt-get update && apt-get install -y vulkan-sdk
apt-get install -y wget
wget -qO- https://packages.lunarg.com/lunarg-signing-key-pub.asc | gpg --dearmor | tee /etc/apt/trusted.gpg.d/lunarg.gpg > /dev/null && wget -qO- https://packages.lunarg.com/lunarg-vulkan-1.3.261-jammy.list > /etc/apt/sources.list.d/vulkan.list && apt-get update && apt-get install -y vulkan-sdk
apt-get install -y vulkan-sdk
apt-get install -y vulkan-tools
apt-cache search rocblas-dev hipblas-dev
mkdir -p build && cd build && cmake ..
apt-get install -y cmake
cd build && cmake ..
mkdir -p build && cd build && cmake ..
cd .. && mkdir -p build && cd build && cmake ..
pwd && ls -la
cd /testbed && mkdir -p build && cd build && cmake ..
cmake --build .
ctest
ctest --rerun-failed --output-on-failure
mkdir -p /root/.cache/llama.cpp/ && wget https://huggingface.co/ggml-org/models/resolve/main/tinyllamas/stories15M-q4_0.gguf -O /root/.cache/llama.cpp/ggml-org_models_tinyllamas_stories15M-q4_0.gguf
