ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
open ".github/workflows/python-check-requirements.yml"
open "requirements.txt"
open "requirements/requirements-convert_hf_to_gguf.txt"
open "README.md"
open "docs/build.md"
sudo apt-get update && sudo apt-get install -y libcurl4-openssl-dev
apt-get update && apt-get install -y libcurl4-openssl-dev
cmake -B build
apt-get install -y cmake
cmake -B build
apt-get install -y g++
cmake -B build
cmake --build build --config Release
cd build && ctest
cat Testing/Temporary/LastTest.log
ctest --rerun-failed --output-on-failure
mkdir -p ~/.cache/llama.cpp && curl -L https://huggingface.co/ggml-org/models/resolve/main/tinyllamas/stories260K.gguf -o ~/.cache/llama.cpp/ggml-org_models_tinyllamas_stories260K.gguf
apt-get install -y curl
mkdir -p ~/.cache/llama.cpp && curl -L https://huggingface.co/ggml-org/models/resolve/main/tinyllamas/stories260K.gguf -o ~/.cache/llama.cpp/ggml-org_models_tinyllamas_stories260K.gguf
curl -I https://huggingface.co/ggml-org/models/resolve/main/tinyllamas/stories260K.gguf
