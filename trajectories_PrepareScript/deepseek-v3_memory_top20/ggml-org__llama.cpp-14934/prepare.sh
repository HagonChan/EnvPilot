ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
open "README.md"
apt-get update && apt-get install -y build-essential cmake ninja-build libcurl4-openssl-dev libssl-dev tcl mesa-vulkan-drivers vulkan-sdk rocblas-dev hipblas-dev
cmake -B build -DLLAMA_FATAL_WARNINGS=ON -DGGML_METAL_USE_BF16=ON -DGGML_METAL_EMBED_LIBRARY=OFF -DGGML_METAL_SHADER_DEBUG=ON -DGGML_RPC=ON && cmake --build build --config Release -j $(nproc)
apt-get install -y cmake
cmake -B build -DLLAMA_FATAL_WARNINGS=ON -DGGML_METAL_USE_BF16=ON -DGGML_METAL_EMBED_LIBRARY=OFF -DGGML_METAL_SHADER_DEBUG=ON -DGGML_RPC=ON && cmake --build build --config Release -j $(nproc)
apt-get install -y g++
cmake -B build -DLLAMA_FATAL_WARNINGS=ON -DGGML_METAL_USE_BF16=ON -DGGML_METAL_EMBED_LIBRARY=OFF -DGGML_METAL_SHADER_DEBUG=ON -DGGML_RPC=ON && cmake --build build --config Release -j $(nproc)
apt-get install -y libcurl4-openssl-dev
cmake -B build -DLLAMA_FATAL_WARNINGS=ON -DGGML_METAL_USE_BF16=ON -DGGML_METAL_EMBED_LIBRARY=OFF -DGGML_METAL_SHADER_DEBUG=ON -DGGML_RPC=ON && cmake --build build --config Release -j $(nproc)
cd build && ctest --output-on-failure
